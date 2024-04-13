#
# Copyright (C) 2023 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit from miami device
$(call inherit-product, device/motorola/miami/device.mk)

# Inherit some common Lineage stuff.
$(call inherit-product, vendor/aicp/config/common_full_phone.mk)

# Device identifier. This must come after all inclusions.
PRODUCT_NAME := aicp_miami
PRODUCT_DEVICE := miami
PRODUCT_MANUFACTURER := motorola
PRODUCT_BRAND := motorola
PRODUCT_MODEL := moto edge 30 neo

PRODUCT_GMS_CLIENTID_BASE := android-motorola

PRODUCT_BUILD_PROP_OVERRIDES += \
    TARGET_PRODUCT=miami_g \
    PRIVATE_BUILD_DESC="miami_g-user 13 T1SSM33.1-121-4/4847b-0f0b43 release-keys"

BUILD_FINGERPRINT := motorola/miami_g/miami:13/T1SSMS33M.1-121-4-8/62b45a:user/release-keys
