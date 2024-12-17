#include <linux/module.h>
#include <linux/kernel.h>
#include <linux/debugfs.h>
#include <linux/uaccess.h>
#include <linux/jiffies.h>
#include <linux/slab.h>
#include <linux/mutex.h>

#define DEBUGFS_DIR_NAME "fortytwo"
#define FILE_ID "id"
#define FILE_JIFFIES "jiffies"
#define FILE_FOO "foo"
#define STUDENT_LOGIN "imarushe"

static struct dentry *fortytwo_dir; /* Debugfs directory */
static struct dentry *id_file, *jiffies_file, *foo_file;

static char *foo_data;
static size_t foo_size = 0;
static struct mutex foo_lock; /* Mutex for foo file */

/* Read function for the id file */
static ssize_t id_read(struct file *file, char __user *buf, size_t count, loff_t *pos)
{
	size_t login_len = strlen(STUDENT_LOGIN);

	if (*pos >= login_len)  /* EOF reached */
		return 0;

	if (count > login_len - *pos)  /* Adjust count if too large */
		count = login_len - *pos;

	if (copy_to_user(buf, STUDENT_LOGIN + *pos, count))
		return -EFAULT;

	*pos += count;  /* Update the position pointer */
	return count;
}

/* Write function for the id file */
static ssize_t id_write(struct file *file, const char __user *buf, size_t count, loff_t *pos)
{
	char *kernel_buffer;

	/* Ensure the buffer size is reasonable (not too large) */
	if (count > PAGE_SIZE)
		return -EINVAL;

	kernel_buffer = kzalloc(count + 1, GFP_KERNEL);  /* Allocate memory for the input data */
	if (!kernel_buffer)
		return -ENOMEM;

	if (copy_from_user(kernel_buffer, buf, count)) {  /* Copy the input from user */
		kfree(kernel_buffer);
		return -EFAULT;
	}

	/* Null-terminate the kernel buffer */
	kernel_buffer[count] = '\0';

	/* Compare the written value with the student's login */
	if (strcmp(kernel_buffer, STUDENT_LOGIN) == 0) {
		kfree(kernel_buffer);
		return count;  /* Correct login written */
	} else {
		kfree(kernel_buffer);
		return -EINVAL;  /* Invalid login error */
	}
}

/* Read function for the jiffies file */
static ssize_t jiffies_read(struct file *file, char __user *buf, size_t count, loff_t *pos)
{
	char temp[32];
	int len;

	len = snprintf(temp, sizeof(temp), "%lu\n", jiffies);

	if (*pos >= len)
		return 0;

	if (count > len - *pos)
		count = len - *pos;

	if (copy_to_user(buf, temp + *pos, count))
		return -EFAULT;

	*pos += count;
	return count;
}

/* Read function for the foo file */
static ssize_t foo_read(struct file *file, char __user *buf, size_t count, loff_t *pos)
{
	ssize_t ret = 0;

	mutex_lock(&foo_lock);

	if (*pos >= foo_size) {
		ret = 0;  /* End of data */
	} else {
		if (count > foo_size - *pos)
			count = foo_size - *pos;

		if (copy_to_user(buf, foo_data + *pos, count))
			ret = -EFAULT;
		else {
			*pos += count;
			ret = count;
		}
	}

	mutex_unlock(&foo_lock);
	return ret;
}

/* Write function for the foo file */
static ssize_t foo_write(struct file *file, const char __user *buf, size_t count, loff_t *pos)
{
	ssize_t ret;

	/* Ensure data fits in the allocated buffer */
	if (count > PAGE_SIZE)
		return -EINVAL;

	mutex_lock(&foo_lock);

	/* Clear the buffer and copy data from user space */
	memset(foo_data, 0, PAGE_SIZE);

	if (copy_from_user(foo_data, buf, count)) {
		ret = -EFAULT;
	} else {
		foo_size = count;
		ret = count;
	}

	mutex_unlock(&foo_lock);
	return ret;
}

/* File operation structures */
static const struct file_operations id_fops = {
	.owner = THIS_MODULE,
	.read = id_read,
	.write = id_write,
};

static const struct file_operations jiffies_fops = {
	.owner = THIS_MODULE,
	.read = jiffies_read,
};

static const struct file_operations foo_fops = {
	.owner = THIS_MODULE,
	.read = foo_read,
	.write = foo_write,
};

/* Module initialization function */
static int __init fortytwo_init(void)
{
	foo_data = kzalloc(PAGE_SIZE, GFP_KERNEL);
	if (!foo_data)
		return -ENOMEM;

	mutex_init(&foo_lock);

	fortytwo_dir = debugfs_create_dir(DEBUGFS_DIR_NAME, NULL);
	if (!fortytwo_dir) {
		pr_err("Failed to create debugfs directory\n");
		kfree(foo_data);
		return -ENOMEM;
	}

	id_file = debugfs_create_file(FILE_ID, 0666, fortytwo_dir, NULL, &id_fops);
	if (!id_file)
		pr_err("Failed to create 'id' file\n");

	jiffies_file = debugfs_create_file(FILE_JIFFIES, 0444, fortytwo_dir, NULL, &jiffies_fops);
	if (!jiffies_file)
		pr_err("Failed to create 'jiffies' file\n");

	foo_file = debugfs_create_file(FILE_FOO, 0644, fortytwo_dir, NULL, &foo_fops);
	if (!foo_file)
		pr_err("Failed to create 'foo' file\n");

	pr_info("fortytwo module loaded\n");
	return 0;
}

/* Module cleanup function */
static void __exit fortytwo_exit(void)
{
	debugfs_remove_recursive(fortytwo_dir);
	kfree(foo_data);
	pr_info("fortytwo module unloaded\n");
}

module_init(fortytwo_init);
module_exit(fortytwo_exit);

MODULE_LICENSE("GPL");
MODULE_AUTHOR("Iurii Marushevskyi");
MODULE_DESCRIPTION("DebugFS virtual files: id, jiffies, foo");

