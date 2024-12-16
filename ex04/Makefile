src-m += usb_kbd.c
obj-m += $(src-m:.c=.o)
module-obj = $(obj-m:.o=.ko)

KERNELRELEASE=$(shell uname -r)
KDIR=/lib/modules/$(shell uname -r)/build

all:
	make -C $(KDIR) M=$(PWD) modules

modules_install: all
	make -C $(KDIR) M=$(PWD) modules_install
	cp $(module-obj) /lib/modules/$(shell uname -r)/extra
	cp 80-usb-kbd.rules /etc/udev/rules.d/80-usb-kbd.rules
	depmod -a

clean:
	make -C $(KDIR) M=$(PWD) clean
	rm -f /etc/udev/rules.d/80-usb-kbd.rules

reload:
	udevadm control --reload-rules
