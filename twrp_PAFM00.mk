#
# Copyright (C) 2025 The Android Open Source Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from common AOSP config
$(call inherit-product, $(SRC_TARGET_DIR)/product/base.mk)

# Inherit from TWRP product configuration
$(call inherit-product, vendor/twrp/config/common.mk)

# Device specific configs
$(call inherit-product, device/oppo/PAFM00/device.mk)

# Release name
PRODUCT_RELEASE_NAME := Find X

PRODUCT_COPY_FILES += $(call find-copy-subdir-files,*,$(LOCAL_PATH)/recovery/root,recovery/root)

PRODUCT_DEVICE := PAFM00
PRODUCT_NAME := twrp_PAFM00
PRODUCT_BRAND := OPPO
PRODUCT_MODEL := PAFM00
PRODUCT_MANUFACTURER := OPPO