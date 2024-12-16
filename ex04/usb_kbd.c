#include <linux/module.h>
#include <linux/kernel.h>
#include <linux/device.h>
#include <linux/usb.h>
#include <linux/hid.h>

MODULE_ALIAS("usb_kbd");
MODULE_LICENSE("GPL");

static const struct usb_device_id usb_module_id_table[2] = {
	{ USB_INTERFACE_INFO(
			USB_INTERFACE_CLASS_HID,
			USB_INTERFACE_SUBCLASS_BOOT,
			USB_INTERFACE_PROTOCOL_KEYBOARD) },
	{}
};
MODULE_DEVICE_TABLE(usb, usb_module_id_table);

static int __init init(void)
{
	printk(KERN_INFO "Little Penguin USB keyboard detected.\n");
	return (0);
}

static void __exit cleanup(void)
{
	printk(KERN_INFO "Little Penguin USB keyboard removed.\n");
}

module_exit(cleanup);
module_init(init);
