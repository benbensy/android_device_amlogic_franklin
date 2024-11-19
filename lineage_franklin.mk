#
# Copyright (C) 2024 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit some common Lineage stuff.
$(call inherit-product, vendor/lineage/config/common_full_phone.mk)

# Inherit from franklin device
$(call inherit-product, device/amlogic/franklin/device.mk)

PRODUCT_DEVICE := franklin
PRODUCT_NAME := lineage_franklin
PRODUCT_BRAND := Amlogic
PRODUCT_MODEL := HK1 BOX S905X3
PRODUCT_MANUFACTURER := amlogic

PRODUCT_GMS_CLIENTID_BASE := android-amlogic

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRIVATE_BUILD_DESC="franklin-user 9 PPR1.180610.011 20200919 release-keys"

BUILD_FINGERPRINT := Amlogic/u219/u219:9/PPR1.180610.011/20200919:user/release-keys
