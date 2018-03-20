#Boot animation
TARGET_SCREEN_HEIGHT := 1280
TARGET_SCREEN_WIDTH := 720

# Inherit some common CM stuff.
$(call inherit-product, vendor/cm/config/common_full_phone.mk)

# Enhanced NFC
$(call inherit-product, vendor/cm/config/nfc_enhanced.mk)

# Inherit device configuration
$(call inherit-product, device/pantech/ef52/ef52.mk)

## Device identifier. This must come after all inclusions
PRODUCT_DEVICE := ef52
PRODUCT_NAME := lineage_ef52
PRODUCT_BRAND := pantech
PRODUCT_MODEL := VEGA IRON
PRODUCT_MANUFACTURER := PANTECH
