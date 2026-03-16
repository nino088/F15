#
# Copyright (C) 2024 The Android Open Source Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/base.mk)

# Inherit some common twrp stuff.
$(call inherit-product, vendor/twrp/config/common.mk)

# Inherit from m15x device
$(call inherit-product, device/samsung/m15x/device.mk)

# Enable project quotas and casefolding for emulated storage without sdcardfs
$(call inherit-product, $(SRC_TARGET_DIR)/product/emulated_storage.mk)

PRODUCT_COPY_FILES += $(call find-copy-subdir-files,*,device/samsung/m15x/recovery/root,recovery/root)

PRODUCT_DEVICE := m15x
PRODUCT_NAME := twrp_m15x
PRODUCT_BRAND := samsung
PRODUCT_MODEL := SM-E156B
PRODUCT_MANUFACTURER := samsung

PRODUCT_GMS_CLIENTID_BASE := android-samsung

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRIVATE_BUILD_DESC="m15xnndxx-user 13 TP1A.220624.014 E156BXXS5AYA1 release-keys"

BUILD_FINGERPRINT := samsung/m15xnndxx/m15x:13/TP1A.220624.014/E156BXXS5AYA1:user/release-keys
