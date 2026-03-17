DEVICE_PATH := device/samsung/a16xm

# Display
TARGET_SCREEN_DENSITY := 385
TARGET_SCREEN_HEIGHT := 1080
TARGET_SCREEN_WIDTH := 2340
TARGET_RECOVERY_PIXEL_FORMAT := BGRA_8888
TW_MAX_BRIGHTNESS := 800
TW_DEFAULT_BRIGHTNESS := 400
TW_Y_OFFSET := 80
TW_H_OFFSET := -80
TW_FRAMERATE := 90
TW_BRIGHTNESS_PATH := "/sys/class/backlight/panel/brightness"

# Kernel - prebuilt
TARGET_FORCE_PREBUILT_KERNEL := true
TARGET_PREBUILT_KERNEL := $(DEVICE_PATH)/prebuilt/kernel
TARGET_PREBUILT_DTB := $(DEVICE_PATH)/prebuilt/dtb.img
BOARD_PREBUILT_DTBOIMAGE := $(DEVICE_PATH)/prebuilt/dtbo.img

# Props
#TARGET_VENDOR_PROP += $(DEVICE_PATH)/vendor.prop
TARGET_SYSTEM_PROP += $(DEVICE_PATH)/system.prop

# Inherit from common tree
include device/samsung/mt6835-common/BoardConfigCommon.mk