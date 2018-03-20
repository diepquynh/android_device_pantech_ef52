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

# Inherit from msm8960-common
-include device/pantech/msm8960-common/BoardConfigCommon.mk
-include vendor/pantech/ef52/BoardConfigVendor.mk

# Platform
TARGET_BOOTLOADER_NAME := ef52
TARGET_BOARD_PLATFORM := msm8960

# Board-specific header
TARGET_SPECIFIC_HEADER_PATH := device/pantech/ef52/include

# Kernel
TARGET_KERNEL_CONFIG := cyanogenmod_a870_defconfig

# Bluetooth
BOARD_BLUETOOTH_BDROID_BUILDCFG_INCLUDE_DIR := device/pantech/ef52/bluetooth

# Partitions
BOARD_BOOTIMAGE_PARTITION_SIZE := 20971520 # 20M
BOARD_RECOVERYIMAGE_PARTITION_SIZE := 20971520 # 20M
BOARD_SYSTEMIMAGE_PARTITION_SIZE := 1745715200 # 1.6GB
BOARD_USERDATAIMAGE_PARTITION_SIZE := 27577531392 # 26.2G
BOARD_CACHEIMAGE_PARTITION_SIZE := 419430400 # 400M
BOARD_FLASH_BLOCK_SIZE := 131072 # (BOARD_KERNEL_PAGESIZE * 64)
BOARD_HAS_LARGE_FILESYSTEM := true

# Camera
COMMON_GLOBAL_CFLAGS += -DMR0_CAMERA_BLOB -DPANTECH_CAMERA_HARDWARE

# Custom hardware
# BOARD_HARDWARE_CLASS := device/pantech/ef52/cmhw

# Vibrator
BOARD_HAS_VIBRATOR_IMPLEMENTATION := ../../device/pantech/ef52/vibrator/vibrator.c

# Recovery
BOARD_HAS_NO_SELECT_BUTTON := true
BOARD_USE_CUSTOM_RECOVERY_FONT := \"roboto_15x24.h\"
RECOVERY_FSTAB_VERSION = 2
# TWRP config
TARGET_RECOVERY_PIXEL_FORMAT := "RGBX_8888"
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
# BOARD_CUSTOM_GRAPHICS := ../../../device/pantech/msm8960-common/recovery/graphic.c

# Asserts
TARGET_OTA_ASSERT_DEVICE := ef52,ef52s,ef52k,ef52l,a870s,a870k,a870l,IM-A870S,IM-A870L,IM-A870K
