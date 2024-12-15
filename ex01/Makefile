# Object file to be built
obj-m := main.o

# Current working directory
PWD := $(CURDIR)

# Kernel version
KERNEL_DIR := /lib/modules/$(shell uname -r)/build

# Default target
all:
	$(MAKE) -C $(KERNEL_DIR) M=$(PWD) modules

# Clean target
clean:
	$(MAKE) -C $(KERNEL_DIR) M=$(PWD) clean
