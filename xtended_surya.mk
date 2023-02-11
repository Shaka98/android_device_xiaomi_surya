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

# Inherit some common Xtended stuff.
$(call inherit-product, vendor/xtended/config/common_full_phone.mk)

PRODUCT_NAME := xtended_surya
PRODUCT_DEVICE := surya
PRODUCT_BRAND := POCO
PRODUCT_MODEL := M2007J20CG
PRODUCT_MANUFACTURER := Xiaomi

PRODUCT_GMS_CLIENTID_BASE := android-xiaomi

# Bootanimation
TARGET_BOOT_ANIMATION_RES := 1080

# Official Tags
XTENDED_BUILD_TYPE := UNOFFICIAL
XTENDED_BUILD_MAINTAINER := Shaka98
WITH_GAPPS := true
PROCESSOR_MODEL := SM6150