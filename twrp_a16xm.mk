# Release name
PRODUCT_RELEASE_NAME := A16

# Inherit from a16xm device
$(call inherit-product, device/samsung/a16xm/device.mk)

PRODUCT_DEVICE := a16xm
PRODUCT_NAME := twrp_a16xm
PRODUCT_BRAND := samsung
PRODUCT_MODEL := SM-A166P
PRODUCT_MANUFACTURER := samsung

PRODUCT_COPY_FILES += $(call find-copy-subdir-files,*,device/samsung/a16xm/recovery/root,recovery/root)