## Specify phone tech before including full_phone
$(call inherit-product, vendor/cm/config/gsm.mk)

# Boot animation
TARGET_SCREEN_HEIGHT := 1280
TARGET_SCREEN_WIDTH := 720

# Inherit some common CM stuff.
$(call inherit-product, vendor/cm/config/common_full_phone.mk)

# Enhanced NFC
$(call inherit-product, vendor/cm/config/nfc_enhanced.mk)

# Inherit device configuration
$(call inherit-product, device/pantech/ef51l/ef51l.mk)

## Device identifier. This must come after all inclusions
PRODUCT_DEVICE := ef51l
PRODUCT_NAME := cm_ef51l
PRODUCT_BRAND := pantech
PRODUCT_MODEL := VEGA R3
PRODUCT_MANUFACTURER := PANTECH

# Enable Torch
PRODUCT_PACKAGES += Torch
