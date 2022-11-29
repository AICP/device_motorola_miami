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

# Partitions
BOARD_USERDATAIMAGE_PARTITION_SIZE := 116681322496
BOARD_MOTOROLA_DYNAMIC_PARTITIONS_SIZE := 4306497536 #SUP/2-4096
BOARD_SUPER_PARTITION_SIZE := 8613003264

# Security
VENDOR_SECURITY_PATCH := 2022-10-01

# Inherit from the proprietary version
-include vendor/motorola/rhodep/BoardConfigVendor.mk
