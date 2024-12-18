#include <linux/module.h>
#include <linux/kernel.h>
#include <linux/init.h>
#include <linux/miscdevice.h>
#include <linux/fs.h>
#include <linux/slab.h>
#include <linux/uaccess.h> /* For copy_to_user and copy_from_user */

MODULE_LICENSE("GPL");
MODULE_AUTHOR("Louis Solofrizzo <louis@ne02ptzero.me>");
MODULE_DESCRIPTION("Misc char device driver that reverses input string.");

/* Buffer for storing user input */
static char str[PAGE_SIZE];

/* Forward declarations for file operations */
static ssize_t myfd_read(struct file *fp, char __user *user, size_t size, loff_t *offs);
static ssize_t myfd_write(struct file *fp, const char __user *user, size_t size, loff_t *offs);

/* File operations for the misc device */
static const struct file_operations myfd_fops = {
	.owner = THIS_MODULE,
	.read = myfd_read,
	.write = myfd_write,
};

/* Misc device structure */
static struct miscdevice myfd_device = {
	.minor = MISC_DYNAMIC_MINOR,
	.name = "reverse",
	.fops = &myfd_fops,
};

/* Initialization function */
static int __init myfd_init(void)
{
	int retval;

	retval = misc_register(&myfd_device);
	if (retval) {
		pr_err("Failed to register misc device\n");
		return retval;
	}

	pr_info("Misc device registered: /dev/reverse\n");
	return 0; /* Success */
}

/* Cleanup function */
static void __exit myfd_cleanup(void)
{
	misc_deregister(&myfd_device);
	pr_info("Misc device unregistered: /dev/reverse\n");
}

/* Read function */
static ssize_t myfd_read(struct file *fp, char __user *user, size_t size, loff_t *offs)
{
	size_t i, t, len;
	char *tmp;

	len = strlen(str);
	if (*offs >= len)
		return 0; /* EOF */

	/* Allocate temporary buffer to hold reversed string */
	tmp = kmalloc(len + 1, GFP_KERNEL); /* +1 for null terminator */
	if (!tmp)
		return -ENOMEM;

	/* Reverse the string */
	for (t = len - 1, i = 0; i < len; t--, i++)
		tmp[i] = str[t];

	tmp[i] = '\0'; /* Null-terminate the reversed string */

	/* Send the reversed string to userspace */
	if (copy_to_user(user, tmp, len)) {
		kfree(tmp);
		return -EFAULT;
	}

	kfree(tmp);
	*offs += len;
	return len; /* Return the length of the reversed string */
}

/* Write function */
static ssize_t myfd_write(struct file *fp, const char __user *user, size_t size, loff_t *offs)
{
	if (size >= PAGE_SIZE)
		return -EINVAL; /* Input too large */

	/* Copy data from userspace to kernel buffer */
	if (copy_from_user(str, user, size))
		return -EFAULT;

	str[size] = '\0'; /* Ensure null-termination */
	return size;
}

module_init(myfd_init);
module_exit(myfd_cleanup);

