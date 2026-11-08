#
# Copyright (C) 2022-2025 The LineageOS Project
# Copyright (C) 2025-2026 The Evolution X Project
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)

# Camera
TARGET_SUPPORTS_OMX_SERVICE := false

$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit from device makefile
$(call inherit-product, device/samsung/m23xq/device.mk)

# Inherit some common Lineage stuff.
$(call inherit-product, vendor/lineage/config/common_full_phone.mk)

# Evolution X Flags
TARGET_SUPPORT_BOOT_ANIMATIONS := true
BUILD_BCR := true

WITH_GMS := true
EVO_BUILD_TYPE := Unofficial
TARGET_BOOT_ANIMATION_RES := 1080
TARGET_BUILD_APERTURE_CAMERA := true
TARGET_INCLUDE_ACCORD := false

TARGET_ENABLE_BLUR := true

# Display
TARGET_SCREEN_HEIGHT := 2408
TARGET_SCREEN_WIDTH := 1080

PRODUCT_NAME := lineage_m23xq
PRODUCT_DEVICE := m23xq
PRODUCT_BRAND := samsung
PRODUCT_MODEL := SM-M236B
PRODUCT_MANUFACTURER := samsung
PRODUCT_GMS_CLIENTID_BASE := android-samsung

PRODUCT_BUILD_PROP_OVERRIDES += \
    BuildDesc="m23xqxx-user 14 UP1A.231005.007 M236BXXSEEZB2 release-keys" \
    BuildFingerprint=samsung/m23xqxx/m23xq:11/RP1A.200720.012/M236BXXSEEZB2:user/release-keys \
    DeviceProduct=m23xqxx \
    SystemName=m23xqxx
