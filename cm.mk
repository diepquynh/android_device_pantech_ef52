#Boot animation
TARGET_SCREEN_HEIGHT := 1280
TARGET_SCREEN_WIDTH := 720

# Inherit some common CM stuff.
$(call inherit-product, vendor/cm/config/common_full_phone.mk)

# Enhanced NFC
$(call inherit-product, vendor/cm/config/nfc_enhanced.mk)

# Inherit device configuration
$(call inherit-product, device/pantech/ef52l/ef52l.mk)

## Device identifier. This must come after all inclusions
PRODUCT_DEVICE := ef52l
PRODUCT_NAME := cm_ef52l
PRODUCT_BRAND := pantech
PRODUCT_MODEL := VEGA Iron
PRODUCT_MANUFACTURER := PANTECH

# Enable Torch
PRODUCT_PACKAGES += Torch
