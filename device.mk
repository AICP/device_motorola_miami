#
# Copyright (C) 2023 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

# A/B
TARGET_IS_VAB := true

# we don't use and flash vendor_boot
TARGET_NOT_USE_VENDOR_BOOT := true

# Boot animation
TARGET_SCREEN_HEIGHT := 2400
TARGET_SCREEN_WIDTH := 1080

# AAPT
PRODUCT_AAPT_CONFIG := normal
PRODUCT_AAPT_PREF_CONFIG := xxhdpi

# Overlay
PRODUCT_PACKAGES += \
    FrameworksResMiami \
    SettingsProviderResMiami \
    SettingsMiami

# Audio
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/audio/audio_effects.xml:$(TARGET_COPY_OUT_VENDOR)/etc/audio_effects.xml \
    $(LOCAL_PATH)/audio/audio_ext_spkr.conf:$(TARGET_COPY_OUT_VENDOR)/etc/audio_ext_spkr.conf \
    $(LOCAL_PATH)/audio/audio_io_policy.conf:$(TARGET_COPY_OUT_VENDOR)/etc/audio_io_policy.conf \
    $(LOCAL_PATH)/audio/audio_platform_info.xml:$(TARGET_COPY_OUT_VENDOR)/etc/audio_platform_info.xml \
    $(LOCAL_PATH)/audio/audio_policy_configuration.xml:$(TARGET_COPY_OUT_VENDOR)/etc/audio_policy_configuration.xml \
    $(LOCAL_PATH)/audio/audio_policy_volumes.xml:$(TARGET_COPY_OUT_VENDOR)/etc/audio_policy_volumes.xml \
    $(LOCAL_PATH)/audio/bluetooth_qti_audio_policy_configuration.xml:$(TARGET_COPY_OUT_VENDOR)/etc/bluetooth_qti_audio_policy_configuration.xml \
    $(LOCAL_PATH)/audio/default_volume_tables.xml:$(TARGET_COPY_OUT_VENDOR)/etc/default_volume_tables.xml \
    $(LOCAL_PATH)/audio/mixer_paths.xml:$(TARGET_COPY_OUT_VENDOR)/etc/mixer_paths.xml \
    $(LOCAL_PATH)/audio/r_submix_audio_policy_configuration.xml:$(TARGET_COPY_OUT_VENDOR)/etc/r_submix_audio_policy_configuration.xml \
    $(LOCAL_PATH)/audio/dolby/dax-default.xml:$(TARGET_COPY_OUT_VENDOR)/etc/dolby/dax-default.xml

# Fingerprint
PRODUCT_PACKAGES += \
    android.hardware.biometrics.fingerprint@2.3-service.miami


PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/configs/keylayout/goodix_ts.kl:$(TARGET_COPY_OUT_VENDOR)/usr/keylayout/goodix_ts.kl \
    $(LOCAL_PATH)/configs/keylayout/ReadyForAirRemote_Consumer_Control.kl:$(TARGET_COPY_OUT_VENDOR)/usr/keylayout/ReadyForAirRemote_Consumer_Control.kl \
    $(LOCAL_PATH)/configs/keylayout/ReadyForAirRemote_Keyboard.kl:$(TARGET_COPY_OUT_VENDOR)/usr/keylayout/ReadyForAirRemote_Keyboard.kl

# Init
PRODUCT_PACKAGES += \
    init.mmi.overlay.rc

PRODUCT_PACKAGES += \
    Tag \
    android.hardware.nfc@1.2.vendor \
    com.android.nfc_extras \
    libchrome.vendor \
    nqnfcinfo \
    libnxp_shim

# recovery
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/recovery/root/init.recovery.miami.rc:$(TARGET_COPY_OUT_RECOVERY)/root/init.recovery.miami.rc

# Shipping level
PRODUCT_SHIPPING_API_LEVEL := 31

# Sensors
PRODUCT_PACKAGES += \
    sensors.miami

PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/sensors/hals.conf:$(TARGET_COPY_OUT_VENDOR)/etc/sensors/hals.conf

# Soong namespaces
PRODUCT_SOONG_NAMESPACES += \
    $(LOCAL_PATH)

# Inherit from motorola sm6375-common
$(call inherit-product, device/motorola/sm6375-common/common.mk)

# Inherit from vendor blobs
$(call inherit-product, vendor/motorola/miami/miami-vendor.mk)


$(call inherit-product, vendor/gapps/arm64/arm64-vendor.mk)
