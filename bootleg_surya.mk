#
# Copyright (C) 2018-2023 ArrowOS
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit from surya device
$(call inherit-product, device/xiaomi/surya/device.mk)

# Inherit some common Bootleggers stuff.
$(call inherit-product, vendor/bootleggers/config/common_full_phone.mk)

PRODUCT_NAME := bootleg_surya
PRODUCT_DEVICE := surya
PRODUCT_BRAND := POCO
PRODUCT_MODEL := M2007J20CG
PRODUCT_MANUFACTURER := Xiaomi

PRODUCT_GMS_CLIENTID_BASE := android-xiaomi

TARGET_SCREEN_HEIGHT := 2400
TARGET_SCREEN_WIDTH := 1080
TARGET_USE_SINGLE_BOOTANIMATION := true
TARGET_PICK_BOOTANIMATION := "6"

# Maintainer Prop
PRODUCT_PROPERTY_OVERRIDES += \
    ro.bootleggers.maintainer=Shaka98
BOOTLEGGERS_BUILD_TYPE := Unofficial
TARGET_BOOTLEG_ARCH := arm64
WITH_GAPPS := true