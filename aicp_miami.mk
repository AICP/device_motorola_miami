#
# SPDX-FileCopyrightText: The LineageOS Project
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
TARGET_SUPPORTS_OMX_SERVICE := false
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit from miami device
$(call inherit-product, device/motorola/miami/device.mk)

# Inherit some common Lineage stuff.
$(call inherit-product, vendor/aicp/config/common_full_phone.mk)

PRODUCT_NAME := aicp_miami
PRODUCT_DEVICE := miami
PRODUCT_MANUFACTURER := motorola
PRODUCT_BRAND := motorola
PRODUCT_MODEL := moto edge 30 neo

PRODUCT_GMS_CLIENTID_BASE := android-motorola

PRODUCT_BUILD_PROP_OVERRIDES += \
    BuildDesc="miami_g-user 14 U1SSMS34.31-64-10-5 ab817e-7fa5e release-keys MUR1-0.90" \
    BuildFingerprint=motorola/miami_g/miami:14/U1SSMS34.31-64-10-5/ab817e-7fa5e:user/release-keys \
    DeviceProduct=miami_g
