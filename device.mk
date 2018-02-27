#
# Copyright (C) 2011 The Android Open-Source Project
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#      http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
#

# This file includes all definitions that apply to ALL qcom devices, and
# are also specific to qcom devices
#
# Everything in this directory will become public
#
$(call inherit-product, device/pantech/msm8960-common/msm8960.mk)

DEVICE_PACKAGE_OVERLAYS += $(LOCAL_PATH)/overlay

# This device is xhdpi.  However the platform doesn't
# currently contain all of the bitmaps at xhdpi density so
# we do this little trick to fall back to the hdpi version
# if the xhdpi doesn't exist.
PRODUCT_AAPT_CONFIG := normal hdpi xhdpi
PRODUCT_AAPT_PREF_CONFIG := xhdpi

# Root files
PRODUCT_PACKAGES += \
	initlogo.rle

# Prebuilt kl and kcm keymaps
PRODUCT_COPY_FILES += \
	$(LOCAL_PATH)/usr/apq8064-tabla-snd-card_Button_Jack.kl:system/usr/keylayout/apq8064-tabla-snd-card_Button_Jack.kl \
	$(LOCAL_PATH)/usr/keypad_8064.kl:system/usr/keylayout/keypad_8064.kl \
	$(LOCAL_PATH)/usr/apq8064-tabla-snd-card_Button_Jack.kcm:system/usr/keychars/apq8064-tabla-snd-card_Button_Jack.kcm \
	$(LOCAL_PATH)/usr/keypad_8064.kcm:system/usr/keychars/keypad_8064.kcm

# Screen density
PRODUCT_PROPERTY_OVERRIDES += \
	ro.sf.lcd_density=320

# Firmware
PRODUCT_COPY_FILES += \
	$(LOCAL_PATH)/firmware/CE150F00.bin:root/CE150F00.bin \
	$(LOCAL_PATH)/firmware/CE150F01.bin:root/CE150F01.bin \
	$(LOCAL_PATH)/firmware/CE150F02_89.bin:root/CE150F02_89.bin \
	$(LOCAL_PATH)/firmware/CE150F03_89.bin:root/CE150F03_89.bin 

# NFC packages
PRODUCT_PACKAGES += \
	libnfc \
	libnfc_jni \
	Nfc \
	Tag \
	com.android.nfc_extras

PRODUCT_COPY_FILES += \
	frameworks/native/data/etc/android.hardware.nfc.xml:system/etc/permissions/android.hardware.nfc.xml \
	frameworks/native/data/etc/com.android.nfc_extras.xml:system/etc/permissions/com.android.nfc_extras.xml \
	frameworks/native/data/etc/com.nxp.mifare.xml:system/etc/permissions/com.nxp.mifare.xml

$(call inherit-product, frameworks/native/build/phone-xhdpi-2048-dalvik-heap.mk)
