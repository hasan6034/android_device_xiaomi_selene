#
# Copyright (C) 2021 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit from device makefile
$(call inherit-product, device/xiaomi/selene/device.mk)

# Inherit some common Lineage stuff
$(call inherit-product, vendor/lineage/config/common_full_phone.mk)

# Boot animation
TARGET_SCREEN_WIDTH := 1080
TARGET_SCREEN_HEIGHT := 2400
TARGET_BOOT_ANIMATION_RES := 1080
scr_resolution := 1080

## Device identifier. This must come after all inclusions
PRODUCT_DEVICE := selene
PRODUCT_NAME := lineage_selene
PRODUCT_BRAND := Redmi
PRODUCT_MANUFACTURER := Xiaomi
PRODUCT_MODEL := Redmi 10
PRODUCT_SYSTEM_NAME := selene
PRODUCT_SYSTEM_DEVICE := selene

PRODUCT_GMS_CLIENTID_BASE := android-xiaomi
TARGET_VENDOR := xiaomi
TARGET_VENDOR_PRODUCT_NAME := selene
PRODUCT_BUILD_PROP_OVERRIDES += \
    PRIVATE_BUILD_DESC="selene-user 12 TP1A.220624.014 V14.0.6.0.TKUMIXM release-keys" \
    TARGET_DEVICE=$(PRODUCT_SYSTEM_DEVICE) \
    TARGET_PRODUCT=$(PRODUCT_SYSTEM_NAME)

# Set BUILD_FINGERPRINT variable to be picked up by both system and vendor build.prop
BUILD_FINGERPRINT := "Redmi/selene/selene:12/TP1A.220624.014/V14.0.6.0.TKUMIXM:user/release-keys"

# RisingOS flags
RISING_MAINTAINER := fukiame
PRODUCT_BUILD_PROP_OVERRIDES += \
    RISING_MAINTAINER="fukiame"

WITH_GMS := true
TARGET_CORE_GMS := true
