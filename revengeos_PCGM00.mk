#
# Copyright (C) 2020 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from RMX1901 device
$(call inherit-product, $(LOCAL_PATH)/device.mk)

# Inherit some common RevengeOS stuff
$(call inherit-product, vendor/revengeos/config/common.mk)
TARGET_BOOT_ANIMATION_RES := 1080

# Official-ify
REVENGEOS_BUILDTYPE := OFFICIAL

# Device identifier. This must come after all inclusions.
PRODUCT_BRAND := Oppo
PRODUCT_DEVICE := PCGM00
PRODUCT_MANUFACTURER := Oppo
PRODUCT_NAME := revengeos_PCGM00
PRODUCT_MODEL := Oppo K3

PRODUCT_GMS_CLIENTID_BASE := android-oppo

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRIVATE_BUILD_DESC="coral-user 11 RP1A.201105.002 6869500 release-keys" \

# Set BUILD_FINGERPRINT variable to be picked up by both system and vendor build.prop
BUILD_FINGERPRINT := oppo/PCGM00/PCGM00:11/RP1A.201105.002/6869500:user/release-keys

PRODUCT_PROPERTY_OVERRIDES += \
    ro.build.fingerprint=$(BUILD_FINGERPRINT)
