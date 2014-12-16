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

include device/pantech/ef52l-common/BoardConfigCommon.mk

TARGET_SPECIFIC_HEADER_PATH := device/pantech/ef52l/include

BOARD_KERNEL_CMDLINE := console=NULL,115200,n8 androidboot.hardware=qcom user_debug=31 msm_rtb.filter=0x3F ehci-hcd.park=3 loglevel=0 vmalloc=0x16000000 maxcpus=2 androidboot.selinux=permissive

TARGET_KERNEL_SOURCE := kernel/pantech/ef52l
TARGET_KERNEL_CONFIG := cyanogenmod_a870_defconfig

BOARD_HAVE_BLUETOOTH_QCOM := true
BLUETOOTH_HCI_USE_MCT := true

TARGET_BOOTLOADER_BOARD_NAME := MSM8960
TARGET_BOOTLOADER_NAME=ef52l

TARGET_OTA_ASSERT_DEVICE := ef49k,ef52l

BOARD_BLUETOOTH_BDROID_BUILDCFG_INCLUDE_DIR := device/pantech/ef52l/bluetooth

# Wifi
BOARD_HAS_QCOM_WLAN := true
BOARD_WLAN_DEVICE := qcwcn
WPA_SUPPLICANT_VERSION := VER_0_8_X
BOARD_WPA_SUPPLICANT_DRIVER := NL80211
BOARD_WPA_SUPPLICANT_PRIVATE_LIB := lib_driver_cmd_$(BOARD_WLAN_DEVICE)
BOARD_HOSTAPD_DRIVER := NL80211
BOARD_HOSTAPD_PRIVATE_LIB := lib_driver_cmd_$(BOARD_WLAN_DEVICE)
WIFI_DRIVER_FW_PATH_STA := "sta"
WIFI_DRIVER_FW_PATH_AP := "ap"

TARGET_RECOVERY_PIXEL_FORMAT := "RGBX_8888"
TARGET_RECOVERY_FSTAB = device/pantech/ef52l/rootdir/fstab.qcom

-include vendor/pantech/ef52l/BoardConfigVendor.mk

BOARD_HAS_NO_SELECT_BUTTON := true

#Camera
USE_CAMERA_STUB := true
COMMON_GLOBAL_CFLAGS += -DMR0_CAMERA_BLOB -DPANTECH_CAMERA_HARDWARE

#Custom hardware
BOARD_HARDWARE_CLASS := device/pantech/ef52l/cmhw

# Vibrator
BOARD_HAS_VIBRATOR_IMPLEMENTATION := ../../device/pantech/ef52l/vibrator/vibrator.c

# BOARD_CUSTOM_GRAPHICS := ../../../device/pantech/ef52l-common/recovery/graphic.c

#TWRP config
DEVICE_RESOLUTION := 720x1280
RECOVERY_SDCARD_ON_DATA := true
RECOVERY_GRAPHICS_USE_LINELENGTH := true
BOARD_HAS_NO_REAL_SDCARD := true
PRODUCT_BUILD_PROP_OVERRIDES += BUILD_UTC_DATE=0
TW_INCLUDE_JB_CRYPTO := true
TW_FLASH_FROM_STORAGE := true
TW_NO_USB_STORAGE := true
TW_INTERNAL_STORAGE_PATH := "/data/media/0"
TW_INTERNAL_STORAGE_MOUNT_POINT := "data"
TW_EXTERNAL_STORAGE_PATH := "/usb-otg"
TW_EXTERNAL_STORAGE_MOUNT_POINT := "usb-otg"

#Philz touch recovery
RECOVERY_CUSTOM_LOGO := device/pantech/ef52l-common/recovery/tek-bg-720p.png

# Recovery
BOARD_USE_CUSTOM_RECOVERY_FONT := \"roboto_15x24.h\"
RECOVERY_FSTAB_VERSION = 2

#Ril
BOARD_RIL_CLASS := ../../../device/pantech/ef52l/ril/

# SELinux policies
# qcom sepolicy
include device/qcom/sepolicy/sepolicy.mk

#QCOM
BOARD_USES_QCOM_HARDWARE := true
TARGET_USES_QCOM_BSP := true
BOARD_USES_QCOM_LIBS := true

#Multiboot config
MR_INPUT_TYPE := type_b
MR_INIT_DEVICES := device/pantech/ef52l-common/multirom/mr_init_devices.c
MR_RD_ADDR := 0x82200000
MR_DPI := hdpi
MR_FSTAB := device/pantech/ef52l-common/recovery/twrp.fstab
MR_KEXEC_MEM_MIN := 0x85000000
MR_DPI_FONT := 216
