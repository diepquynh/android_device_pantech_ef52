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
$(call inherit-product, device/pantech/ef52l-common/msm8960.mk)

DEVICE_PACKAGE_OVERLAYS += $(LOCAL_PATH)/overlay

# This device is xhdpi.  However the platform doesn't
# currently contain all of the bitmaps at xhdpi density so
# we do this little trick to fall back to the hdpi version
# if the xhdpi doesn't exist.
PRODUCT_AAPT_CONFIG := normal hdpi xhdpi
PRODUCT_AAPT_PREF_CONFIG := xhdpi

PRODUCT_PACKAGES += \
	lights.qcom \
	libwpa_client \
	hostapd \
	dhcpcd.conf \
	wpa_supplicant \
	wpa_supplicant.conf

# Wifi
PRODUCT_COPY_FILES += \
	$(LOCAL_PATH)/wifi/wpa_supplicant_overlay.conf:system/etc/wifi/wpa_supplicant_overlay.conf \
	$(LOCAL_PATH)/wifi/p2p_supplicant_overlay.conf:system/etc/wifi/p2p_supplicant_overlay.conf \
	$(LOCAL_PATH)/wifi/WCNSS_qcom_cfg.ini:system/etc/firmware/wlan/prima/WCNSS_qcom_cfg.ini \
	$(LOCAL_PATH)/wifi/WCNSS_qcom_wlan_nv.bin:system/etc/firmware/wlan/prima/WCNSS_qcom_wlan_nv.bin \
	$(LOCAL_PATH)/wifi/WCNSS_cfg.dat:system/etc/firmware/wlan/prima/WCNSS_cfg.dat 

PRODUCT_COPY_FILES += \
        $(LOCAL_PATH)/configs/mixer_paths.xml:system/etc/mixer_paths.xml

PRODUCT_COPY_FILES += \
	$(LOCAL_PATH)/configs/thermald-qcom.conf:system/etc/thermald.conf

PRODUCT_COPY_FILES += \
        $(LOCAL_PATH)/rootdir/initlogo.rle:root/initlogo.rle888 \
	$(LOCAL_PATH)/rootdir/init.qcom.rc:root/init.qcom.rc \
        $(LOCAL_PATH)/rootdir/init.qcom.sh:root/init.qcom.sh \
        $(LOCAL_PATH)/rootdir/init.target.rc:root/init.target.rc \
	$(LOCAL_PATH)/rootdir/fstab.qcom:root/fstab.qcom \
	$(LOCAL_PATH)/rootdir/ueventd.qcom.rc:root/ueventd.qcom.rc

# Prebuilt kl and kcm keymaps
PRODUCT_COPY_FILES += \
	$(LOCAL_PATH)/usr/apq8064-tabla-snd-card_Button_Jack.kl:system/usr/keylayout/apq8064-tabla-snd-card_Button_Jack.kl \
	$(LOCAL_PATH)/usr/keypad_8064.kl:system/usr/keylayout/keypad_8064.kl \
	$(LOCAL_PATH)/usr/apq8064-tabla-snd-card_Button_Jack.kcm:system/usr/keychars/apq8064-tabla-snd-card_Button_Jack.kcm \
	$(LOCAL_PATH)/usr/keypad_8064.kcm:system/usr/keychars/keypad_8064.kcm

#These are hardware-specific features
PRODUCT_COPY_FILES += \
	frameworks/native/data/etc/android.hardware.telephony.gsm.xml:system/etc/permissions/android.hardware.telephony.gsm.xml

PRODUCT_PROPERTY_OVERRIDES += \
	ro.sf.lcd_density=320

PRODUCT_PACKAGES += \
	hci_qcomm_init

PRODUCT_COPY_FILES += \
	$(LOCAL_PATH)/etc/init.qcom.bt.sh:system/etc/init.qcom.bt.sh \
	$(LOCAL_PATH)/etc/init.qcom.efs.sync.sh:system/etc/init.qcom.efs.sync.sh \
	$(LOCAL_PATH)/etc/init.qcom.fm.sh:system/etc/init.qcom.fm.sh \
	$(LOCAL_PATH)/etc/init.qcom.mdm_links.sh:system/etc/init.qcom.mdm_links.sh \
	$(LOCAL_PATH)/etc/init.qcom.modem_links.sh:system/etc/init.qcom.modem_links.sh \
	$(LOCAL_PATH)/etc/init.qcom.post_boot.sh:system/etc/init.qcom.post_boot.sh 

PRODUCT_PROPERTY_OVERRIDES += \
	ro.qualcomm.bt.hci_transport=smd

PRODUCT_PROPERTY_OVERRIDES += \
    qemu.hw.mainkeys=0

#Camera
PRODUCT_PACKAGES += \
	camera.msm8960 \
	libmmcamera_interface2 \
	libmmcamera_interface \
	libxml2	

PRODUCT_COPY_FILES += \
	$(LOCAL_PATH)/frimware/CE150F00.bin:root/CE150F00.bin \
	$(LOCAL_PATH)/frimware/CE150F01.bin:root/CE150F01.bin \
	$(LOCAL_PATH)/frimware/CE150F02_89.bin:root/CE150F02_89.bin \
	$(LOCAL_PATH)/frimware/CE150F03_89.bin:root/CE150F03_89.bin 

# WiFi
PRODUCT_PACKAGES += \
	libwfcu \
	wcnss_service \
	conn_init 

PRODUCT_PACKAGES += \
	keystore.msm8960

# QRNGD
PRODUCT_PACKAGES += qrngd

PRODUCT_PACKAGES += \
	hostapd_default.conf \
	wpa_supplicant_overlay.conf \
	p2p_supplicant_overlay.conf

$(call inherit-product, frameworks/native/build/phone-xhdpi-2048-dalvik-heap.mk)
