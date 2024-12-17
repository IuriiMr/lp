#include <linux/module.h>
#include <linux/miscdevice.h>
#include <linux/fs.h>
#include <linux/uaccess.h>
#include <linux/slab.h>

#define DEVICE_NAME "fortytwo"
#define LOGIN "imarushe"

static ssize_t fortytwo_read(struct file *file, char __user *buf, size_t len, loff_t *offset) {
    size_t login_len = strlen(LOGIN);

    if (*offset >= login_len)  // EOF reached
        return 0;

    if (len > login_len - *offset)  // Adjust length to prevent over-reading
        len = login_len - *offset;

    if (copy_to_user(buf, LOGIN + *offset, len))  // Copy login to user buffer
        return -EFAULT;

    *offset += len;  // Update offset
    return len;
}

/* Write function: Checks if the input matches the student login */
static ssize_t fortytwo_write(struct file *file, const char __user *buf, size_t len, loff_t *offset) {
    char *kernel_buffer;

    if (len >= PAGE_SIZE)  // Ensure no buffer overflow
        return -EINVAL;

    kernel_buffer = kzalloc(len + 1, GFP_KERNEL);  // Allocate memory
    if (!kernel_buffer)
        return -ENOMEM;

    if (copy_from_user(kernel_buffer, buf, len)) {  // Copy user data to kernel buffer
        kfree(kernel_buffer);
        return -EFAULT;
    }

    kernel_buffer[len] = '\0';  // Null-terminate the input string

    if (strcmp(kernel_buffer, LOGIN) == 0) {
        kfree(kernel_buffer);
        return len;  // Correct login written
    }

    kfree(kernel_buffer);
    return -EINVAL;  // Invalid login
}

/* File operations */
static const struct file_operations fortytwo_fops = {
    .owner = THIS_MODULE,
    .read = fortytwo_read,
    .write = fortytwo_write,
};

/* Misc device structure */
static struct miscdevice fortytwo_device = {
    .minor = MISC_DYNAMIC_MINOR,  // Dynamically allocate minor number
    .name = DEVICE_NAME,
    .fops = &fortytwo_fops,
    .mode = 0666,  // Device permissions (read/write for all users)
};

/* Module init: Register the misc device */
static int __init fortytwo_init(void) {
    int ret;

    ret = misc_register(&fortytwo_device);  // Register the device
    if (ret) {
        pr_err("Failed to register misc device: %d\n", ret);
        return ret;
    }

    pr_info("fortytwo misc device registered\n");
    return 0;
}

/* Module exit: Unregister the misc device */
static void __exit fortytwo_exit(void) {
    misc_deregister(&fortytwo_device);
    pr_info("fortytwo misc device unregistered\n");
}

/* Module information */
module_init(fortytwo_init);
module_exit(fortytwo_exit);

MODULE_LICENSE("GPL");
MODULE_AUTHOR("Iurii Marushevskyi");
MODULE_DESCRIPTION("A misc char device fortytwo that checks student login");

