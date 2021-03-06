LOCAL_PATH := device/highscreen/explosion
ifeq ($(TARGET_PREBUILT_KERNEL),)
	LOCAL_KERNEL := $(LOCAL_PATH)/kernel
else
	LOCAL_KERNEL := $(TARGET_PREBUILT_KERNEL)
endif

PRODUCT_COPY_FILES += \
    $(LOCAL_KERNEL):kernel
    
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/recovery/battery.bqfs:recovery/root/battery.bqfs \
    $(LOCAL_PATH)/recovery/ueventd.smdk4x12.rc:recovery/root/ueventd.smdk4x12.rc 
  
PRODUCT_PACKAGES += \
    static_busybox \
    make_ext4fs \
    setup_fs

$(call inherit-product, build/target/product/full.mk)

PRODUCT_BUILD_PROP_OVERRIDES += BUILD_UTC_DATE=0
PRODUCT_NAME := full_explosion
PRODUCT_DEVICE := explosion
