#include <linux/module.h>
#include <linux/kernel.h>
#include <linux/init.h>
#include <linux/proc_fs.h>
#include <linux/fs.h>
#include <linux/uaccess.h>  // For copy_to_user
#include <linux/string.h>   // For string manipulation functions
#include <linux/file.h>     // For file operations

static struct proc_dir_entry *mymounts_entry;

static ssize_t mymounts_read(struct file *file, char __user *buf, size_t count, loff_t *pos)
{
	struct file *proc_file;
	char buffer[1024];  // Buffer to store the contents of /proc/mounts
	ssize_t len;
	char *line;
	char *device;
	char *mount_point;
	char *second_space;

	// Open the /proc/mounts file to read its contents
	proc_file = filp_open("/proc/mounts", O_RDONLY, 0);
	if (IS_ERR(proc_file)) {
		pr_err("Failed to open /proc/mounts\n");
		return PTR_ERR(proc_file);
	}

	// Move the position pointer to the requested position
	if (*pos > 0) {
		kernel_read(proc_file, buffer, *pos, &proc_file->f_pos);  // Skip the already-read part
	}

	// Read the contents of /proc/mounts into the buffer
	len = kernel_read(proc_file, buffer, sizeof(buffer), &proc_file->f_pos);
	if (len <= 0) {
		pr_err("Failed to read from /proc/mounts\n");
		filp_close(proc_file, NULL);
		return len;
	}

	// Process and send the data to user space
	line = buffer;
	while (line < buffer + len) {
		// Find the next line in the buffer
		char *newline = memchr(line, '\n', buffer + len - line);
		if (newline) {
			*newline = '\0';  // Null-terminate the line
		} else {
			// If there's no newline, we reach the end of the buffer
			newline = buffer + len;
		}

		// Extract the device and mount point from the line
		device = line;
		mount_point = strchr(line, ' ');
		if (mount_point) {
			*mount_point = '\0';  // End the device name
			mount_point++;  // Skip the space
		}

		// Trim the mount point at the first space (if any)
		second_space = strchr(mount_point, ' ');
		if (second_space) {
			*second_space = '\0';  // Null-terminate the mount point at the first space
		}

		// Format the output: device name followed by mount point
		char formatted_line[256];
		snprintf(formatted_line, sizeof(formatted_line), "%-10s %-10s\n", device, mount_point);

		size_t to_copy = strlen(formatted_line);
		if (copy_to_user(buf, formatted_line, to_copy)) {
			pr_err("Failed to copy data to user space\n");
			filp_close(proc_file, NULL);
			return -EFAULT;
		}

		*pos += (newline - line) + 1;  // Update the position
		buf += to_copy;  // Move the user buffer pointer
		line = newline + 1;  // Move to the next line

		if (*pos >= len) {
			break;  // No more data to copy
		}
	}

	filp_close(proc_file, NULL);
	return *pos;
}

// Change file_operations to proc_ops for newer kernels
static const struct proc_ops mymounts_fops = {
	.proc_read = mymounts_read,
};

static int __init mymounts_init(void)
{
	// Create the /proc/mymounts entry with the updated proc_ops
	mymounts_entry = proc_create("mymounts", 0, NULL, &mymounts_fops);
	if (!mymounts_entry) {
		pr_err("Failed to create /proc/mymounts\n");
		return -ENOMEM;
	}
	pr_info("mymounts module initialized, /proc/mymounts is available\n");
	return 0;
}

static void __exit mymounts_exit(void)
{
	// Remove the /proc/mymounts entry
	if (mymounts_entry) {
		proc_remove(mymounts_entry);
		pr_info("mymounts module unloaded\n");
	}
}

module_init(mymounts_init);
module_exit(mymounts_exit);

MODULE_LICENSE("GPL");
MODULE_AUTHOR("Iurii Marushevskyi");
MODULE_DESCRIPTION("Kernel module that lists mount points at /proc/mymounts");

