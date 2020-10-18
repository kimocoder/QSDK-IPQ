
ARCH:=arm
SUBTARGET:=ipq90xx_32
BOARDNAME:=QTI IPQ90xx(32bit) based boards
CPU_TYPE:=cortex-a7

DEFAULT_PACKAGES += \
	-uboot-2016-ipq90xx -uboot-2016-ipq90xx_tiny -lk-ipq90xx \
	fwupgrade-tools

define Target/Description
	Build firmware image for IPQ90xx SoC devices.
endef
