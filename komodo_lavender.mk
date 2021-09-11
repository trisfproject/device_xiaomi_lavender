#
# Copyright (C) 2019 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit some common Komodo stuff
$(call inherit-product, vendor/komodo/config/common_full_phone.mk)

# Inherit game space
$(call inherit-product-if-exists, packages/apps/GameSpace/gamespace.mk)

# Komodo Stuff
KOMODO_OFFICIAL := true
KOMODO_GAPPS_TYPE := gapps
KOMODO_VARIANT := RELEASE

# Gapps Stuff
TARGET_BOOT_ANIMATION_RES := 1080
TARGET_GAPPS_ARCH := arm64
USE_GAPPS := true
USE_PIXEL_CHARGING := true

# Device can use Quick Tap feature
TARGET_SUPPORTS_QUICK_TAP := true

# Inherit from lavender device
$(call inherit-product, $(LOCAL_PATH)/device.mk)
$(call inherit-product, $(LOCAL_PATH)/device-hidl.mk)

# Device identifier. This must come after all inclusions.
PRODUCT_NAME := komodo_lavender
PRODUCT_DEVICE := lavender
PRODUCT_BRAND := Xiaomi
PRODUCT_MODEL := Redmi Note 7
PRODUCT_MANUFACTURER := Xiaomi
PRODUCT_GMS_CLIENTID_BASE := android-xiaomi

PRODUCT_BUILD_PROP_OVERRIDES += \
    TARGET_DEVICE="lavender" \
    PRODUCT_NAME="lavender" \
    PRIVATE_BUILD_DESC="lavender-user 9 PKQ1.180904.001 V11.0.5.0.PFGMIXM release-keys"

BUILD_FINGERPRINT :="google/walleye/walleye:8.1.0/OPM1.171019.011/4448085:user/release-keys"
