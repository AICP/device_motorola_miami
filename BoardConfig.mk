#
# Copyright (C) 2022 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from motorola sm6375-common
-include device/motorola/sm6375-common/BoardConfigCommon.mk

DEVICE_PATH := device/motorola/rhodep

# Bootloader
TARGET_BOOTLOADER_BOARD_NAME := rhodep

# Display
TARGET_SCREEN_DENSITY := 400

# Kernel
BOARD_KERNEL_CMDLINE += androidboot.hab.product=rhodep
TARGET_KERNEL_CONFIG += vendor/lineage_rhodep.config

# Kernel Modules
BOARD_VENDOR_KERNEL_MODULES_LOAD := $(strip $(shell cat $(DEVICE_PATH)/modules.load))
BOARD_VENDOR_KERNEL_MODULES_BLOCKLIST_FILE := $(DEVICE_PATH)/modules.blocklist
BOARD_VENDOR_RAMDISK_RECOVERY_KERNEL_MODULES_LOAD := $(strip $(shell cat $(DEVICE_PATH)/modules.load.recovery))
BOOT_KERNEL_MODULES := $(BOARD_VENDOR_RAMDISK_RECOVERY_KERNEL_MODULES_LOAD)

# Partitions
BOARD_USERDATAIMAGE_PARTITION_SIZE := 116681322496
BOARD_MOTOROLA_DYNAMIC_PARTITIONS_SIZE := 8608808960 #(BOARD_SUPER_PARTITION_SIZE - 4194304)
BOARD_SUPER_PARTITION_SIZE := 8613003264

# Properties
TARGET_VENDOR_PROP += $(DEVICE_PATH)/vendor.prop

# Security
VENDOR_SECURITY_PATCH := 2022-10-01

# Inherit from the proprietary version
-include vendor/motorola/rhodep/BoardConfigVendor.mk
