USE_CAMERA_STUB := true

# inherit from the proprietary version
-include vendor/highscreen/explosion/BoardConfigVendor.mk

TARGET_CPU_ABI := armeabi-v7a
TARGET_CPU_ABI2 := armeabi
TARGET_CPU_SMP := true
TARGET_ARCH := arm
TARGET_ARCH_VARIANT := armv7-a-neon
TARGET_ARCH_VARIANT_CPU := cortex-a9
ARCH_ARM_HAVE_NEON := true
ARCH_ARM_HAVE_TLS_REGISTER := true
TARGET_GLOBAL_CFLAGS += -mtune=cortex-a9 -mfpu=neon -mfloat-abi=softfp
TARGET_GLOBAL_CPPFLAGS += -mtune=cortex-a9 -mfpu=neon -mfloat-abi=softfp
TARGET_NO_BOOTLOADER := true
TARGET_BOARD_PLATFORM := exynos4
TARGET_BOOTLOADER_BOARD_NAME := smdk4x12

EXYNOS4X12_ENHANCEMENTS := true
EXYNOS4_ENHANCEMENTS := true

ifdef EXYNOS4X12_ENHANCEMENTS
COMMON_GLOBAL_CFLAGS += -DEXYNOS4_ENHANCEMENTS
COMMON_GLOBAL_CFLAGS += -DEXYNOS4X12_ENHANCEMENTS
COMMON_GLOBAL_CFLAGS += -DDISABLE_HW_ID_MATCH_CHECK
endif

TARGET_SOC := exynos4x12

# Kernel
BOARD_KERNEL_CMDLINE := 
BOARD_KERNEL_BASE := 0x10000000
BOARD_KERNEL_PAGESIZE := 2048
TARGET_PREBUILT_KERNEL := device/highscreen/explosion/kernel

BOARD_BOOTIMAGE_PARTITION_SIZE := 8388608
BOARD_RECOVERYIMAGE_PARTITION_SIZE := 8388608
BOARD_FLASH_BLOCK_SIZE := 131072
TARGET_USERIMAGES_USE_EXT4 := true

# Vold
TARGET_USE_CUSTOM_LUN_FILE_PATH := "/sys/devices/platform/s3c-usbgadget/gadget/lun%d/file"

# Recovery
TARGET_RECOVERY_INITRC := device/highscreen/explosion/recovery/recovery.rc
TARGET_PROVIDES_INIT := true
TARGET_PROVIDES_INIT_TARGET_RC := true
BOARD_CUSTOM_GRAPHICS := ../../../device/highscreen/explosion/recovery/graphics.c
BOARD_USE_CUSTOM_RECOVERY_FONT := \"roboto_15x24.h\"
BOARD_UMS_LUNFILE := "/sys/class/android_usb/android0/f_mass_storage/lun/file"
BOARD_USES_MMCUTILS := true
BOARD_HAS_LARGE_FILESYSTEM := true
BOARD_HAS_NO_MISC_PARTITION := true
BOARD_HAS_NO_SELECT_BUTTON := true
