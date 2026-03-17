# Release name
PRODUCT_RELEASE_NAME := f15

# Inherit from m15x device
$(call inherit-product, device/samsung/m15x/device.mk)

PRODUCT_DEVICE := m15x
PRODUCT_NAME := twrp_m15x
PRODUCT_BRAND := samsung
PRODUCT_MODEL := Samsung Galaxy f15
PRODUCT_MANUFACTURER := samsung

PRODUCT_COPY_FILES += $(call find-copy-subdir-files,*,device/samsung/m15x/recovery/root,recovery/root)
