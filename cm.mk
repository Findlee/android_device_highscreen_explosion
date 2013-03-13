## Specify phone tech before including full_phone
$(call inherit-product, vendor/cm/config/gsm.mk)

# Release name
PRODUCT_RELEASE_NAME := explosion

# Inherit some common CM stuff.
$(call inherit-product, vendor/cm/config/common_full_phone.mk)

# Inherit device configuration
$(call inherit-product, device/highscreen/explosion/device_explosion.mk)

## Device identifier. This must come after all inclusions
PRODUCT_DEVICE := explosion
PRODUCT_NAME := cm_explosion
PRODUCT_BRAND := highscreen
PRODUCT_MODEL := C8690
PRODUCT_MANUFACTURER := highscreen
