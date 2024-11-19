#
# Copyright (C) 2024 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

# API levels
PRODUCT_SHIPPING_API_LEVEL := 28

# Health
PRODUCT_PACKAGES += \
    android.hardware.health@2.1-impl \
    android.hardware.health@2.1-impl.recovery \
    android.hardware.health@2.1-service

# Overlays
PRODUCT_ENFORCE_RRO_TARGETS := *

# Product characteristics
PRODUCT_CHARACTERISTICS := mbx,nosdcard

# Rootdir
PRODUCT_PACKAGES += \
    ddrtest.sh \

PRODUCT_PACKAGES += \
    fstab.amlogic \
    init.amlogic.bluetooth.rc \
    init.amlogic.board.rc \
    init.amlogic.media.rc \
    init.amlogic.rc \
    init.amlogic.tb_detect.rc \
    init.amlogic.usb.rc \
    init.amlogic.wifi.rc \
    init.amlogic.wifi_buildin.rc \
    init.rc \
    init.recovery.amlogic.rc \
    ueventd.rc \

# Soong namespaces
PRODUCT_SOONG_NAMESPACES += \
    $(LOCAL_PATH)

# Inherit the proprietary files
$(call inherit-product, vendor/amlogic/franklin/franklin-vendor.mk)
