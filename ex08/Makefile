# Makefile for the Linux kernel module

# The name of the module (without the .ko extension)
obj-m := reverse.o

# Path to the kernel source tree
KDIR := /lib/modules/$(shell uname -r)/build

# Current directory
PWD := $(shell pwd)

# Default target
all:
	$(MAKE) -C $(KDIR) M=$(PWD) modules

# Clean target
clean:
	$(MAKE) -C $(KDIR) M=$(PWD) clean

