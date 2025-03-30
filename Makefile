PWD := $(shell pwd)
KVERSION := $(shell uname -r)
KERNEL_DIR = /lib/modules/$(KVERSION)

MODULE_NAME = ideapad-laptop-tb2024
obj-m := $(MODULE_NAME).o

all:
	$(MAKE) -C $(KERNEL_DIR)/build/ M=$(PWD) modules
clean:
	$(MAKE) -C $(KERNEL_DIR)/build/ M=$(PWD) clean
