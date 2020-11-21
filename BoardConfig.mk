# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
# http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
#

DEVICE_PATH := device/xiaomi/pyxis

# Assert
TARGET_OTA_ASSERT_DEVICE := pyxis

# Architecture
TARGET_ARCH := arm64
TARGET_ARCH_VARIANT := armv8-a
TARGET_CPU_ABI := arm64-v8a
TARGET_CPU_ABI2 :=
TARGET_CPU_VARIANT := generic
TARGET_CPU_VARIANT_RUNTIME := cortex-a75

TARGET_2ND_ARCH := arm
TARGET_2ND_ARCH_VARIANT := armv8-a
TARGET_2ND_CPU_ABI := armeabi-v7a
TARGET_2ND_CPU_ABI2 := armeabi
TARGET_2ND_CPU_VARIANT := generic
TARGET_2ND_CPU_VARIANT_RUNTIME := cortex-a75

ENABLE_CPUSETS := true
ENABLE_SCHEDBOOST := true

# Bootloader
TARGET_USES_UEFI := true
TARGET_NO_BOOTLOADER := true
TARGET_BOOTLOADER_BOARD_NAME := sdm710

# Kernel
BOARD_KERNEL_CMDLINE := androidboot.console=ttyMSM0
BOARD_KERNEL_CMDLINE += androidboot.hardware=qcom
BOARD_KERNEL_CMDLINE += androidboot.memcg=1 
BOARD_KERNEL_CMDLINE += androidboot.usbcontroller=a600000.dwc3
BOARD_KERNEL_CMDLINE += console=ttyMSM0,115200n8
BOARD_KERNEL_CMDLINE += earlycon=msm_geni_serial,0xA90000
BOARD_KERNEL_CMDLINE += loop.max_part=16

BOARD_KERNEL_BASE           := 0x00000000
BOARD_KERNEL_PAGESIZE       := 4096
BOARD_KERNEL_IMAGE_NAME     := Image.gz-dtb
BOARD_KERNEL_SEPARATED_DTBO := true

TARGET_PREBUILT_KERNEL   := $(DEVICE_PATH)/prebuilt/Image.gz-dtb

# Hack: prevent anti rollback (PLATFORM_VERSION need for decrypt)
PLATFORM_VERSION := 16.1.0
PLATFORM_SECURITY_PATCH := 2099-12-31

# Platform
TARGET_BOARD_PLATFORM := sdm710

# Avb
BOARD_AVB_ENABLE := true

# Partitions
BOARD_FLASH_BLOCK_SIZE := 262144

BOARD_BOOTIMAGE_PARTITION_SIZE     := 134217728
BOARD_RECOVERYIMAGE_PARTITION_SIZE := 67108864

BOARD_SYSTEMIMAGE_PARTITION_SIZE := 3473383800
BOARD_SYSTEMIMAGE_PARTITION_TYPE := ext4

BOARD_USERDATAIMAGE_PARTITION_SIZE   := 12884901888
BOARD_USERDATAIMAGE_FILE_SYSTEM_TYPE := ext4

BOARD_VENDORIMAGE_PARTITION_SIZE   := 1225269552
BOARD_VENDORIMAGE_FILE_SYSTEM_TYPE := ext4

# Workaround for error copying vendor files to recovery ramdisk
TARGET_COPY_OUT_VENDOR := vendor

# File systems
BOARD_HAS_LARGE_FILESYSTEM := true
TARGET_USERIMAGES_USE_EXT4 := true
TARGET_USERIMAGES_USE_F2FS := true
TARGET_USERIMAGES_SPARSE_EXT_DISABLED := false

# Crypto
TW_INCLUDE_CRYPTO := true
TW_INCLUDE_CRYPTO_FBE := true

# Recovery
RECOVERY_SDCARD_ON_DATA := true

TW_THEME := portrait_hdpi
TW_DEVICE_VERSION := SDK28-1.pyxis

TARGET_RECOVERY_PIXEL_FORMAT := "BGRA_8888"
TARGET_RECOVERY_QCOM_RTC_FIX := true

# TWRP specific build flags
TW_USE_TOOLBOX := true
TW_EXCLUDE_DEFAULT_USB_INIT := true

TW_Y_OFFSET             := 80
TW_H_OFFSET             := -80
TW_INPUT_BLACKLIST      := "hbtp_vm"
TW_MAX_BRIGHTNESS       := 2047
TW_DEFAULT_BRIGHTNESS   := 800
TW_CUSTOM_CPU_TEMP_PATH := "/sys/class/thermal/thermal_zone6/temp"
