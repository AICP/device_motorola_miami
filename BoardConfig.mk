#
# SPDX-FileCopyrightText: The LineageOS Project
# SPDX-License-Identifier: Apache-2.0
#

DEVICE_PATH := device/motorola/miami

# Inherit from motorola sm6375-common
include device/motorola/sm6375-common/BoardConfigCommon.mk

# Audio
AUDIO_FEATURE_ENABLED_EXT_AMPLIFIER := true

# Bootloader
TARGET_BOOTLOADER_BOARD_NAME := miami

# HIDL
ODM_MANIFEST_SKUS += dn n
ODM_MANIFEST_DN_FILES := $(DEVICE_PATH)/sku/manifest_dn.xml
ODM_MANIFEST_N_FILES := $(DEVICE_PATH)/sku/manifest_n.xml

# Kernel
BOARD_KERNEL_CMDLINE += androidboot.hab.product=miami
TARGET_KERNEL_CONFIG += vendor/ext_config/moto-holi-miami.config

# Kernel Modules
BOARD_VENDOR_KERNEL_MODULES_LOAD := $(strip $(shell cat $(DEVICE_PATH)/modules.load))
BOARD_VENDOR_KERNEL_MODULES_BLOCKLIST_FILE := $(DEVICE_PATH)/modules.blocklist
BOARD_VENDOR_RAMDISK_RECOVERY_KERNEL_MODULES_LOAD := $(strip $(shell cat $(DEVICE_PATH)/modules.load.recovery))
BOOT_KERNEL_MODULES := $(BOARD_VENDOR_RAMDISK_RECOVERY_KERNEL_MODULES_LOAD)

# Partitions
BOARD_MOT_DP_GROUP_SIZE := 9525264384 # (BOARD_SUPER_PARTITION_SIZE - 4MB)
BOARD_SUPER_PARTITION_SIZE := 9529458688

# Properties
TARGET_PRODUCT_PROP += $(DEVICE_PATH)/product.prop
TARGET_SYSTEM_EXT_PROP += $(DEVICE_PATH)/system_ext.prop
TARGET_VENDOR_PROP += $(DEVICE_PATH)/vendor.prop

# Recovery
TARGET_RECOVERY_UI_MARGIN_HEIGHT := 90

# Security
BOOT_SECURITY_PATCH := 2025-10-01
VENDOR_SECURITY_PATCH := $(BOOT_SECURITY_PATCH)

# Verified Boot
BOARD_AVB_ROLLBACK_INDEX := 39
BOARD_AVB_VBMETA_SYSTEM_ROLLBACK_INDEX := 39

# inherit from the proprietary version
include vendor/motorola/miami/BoardConfigVendor.mk
