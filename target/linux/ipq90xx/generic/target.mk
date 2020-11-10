
SUBTARGET:=generic
BOARDNAME:=QTI IPQ90xx(64bit) based boards
CPU_TYPE:=cortex-a53
KERNELNAME:=Image dtbs

DEFAULT_PACKAGES += \
	sysupgrade-helper

define Target/Description
	Build images for IPQ90xx 64 bit system.
endef
