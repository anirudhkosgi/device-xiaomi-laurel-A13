#
# Copyright (C) 2018-2019 The LineageOS Project
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#      http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/product_launched_with_p.mk)

# Inherit some common bliss stuff
$(call inherit-product, vendor/bliss/config/common_full_phone.mk)

# Inherit from laurel_sprout device
$(call inherit-product, $(LOCAL_PATH)/device.mk)

PRODUCT_BRAND := Xiaomi
PRODUCT_DEVICE := laurel_sprout
PRODUCT_MANUFACTURER := Xiaomi
PRODUCT_NAME := bliss_laurel_sprout
PRODUCT_MODEL := Mi A3

PRODUCT_GMS_CLIENTID_BASE := android-xiaomi

TARGET_VENDOR_PRODUCT_NAME := laurel_sprout

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRIVATE_BUILD_DESC="laurel_sprout-user 11 RKQ1.200903.002 V12.0.15.0.RFQMIXM release-keys"

BUILD_FINGERPRINT := google/redfin/redfin:12/SP1A.211105.003/7757856:user/release-keys

# Official
BLISS_BUILDTYPE=OFFICIAL
BLISS_BUILD_VARIANT := gapps
TARGET_BOOT_ANIMATION_RES := 1080
FORCE_OTA := true

#props
WITH_GAPPS := true
TARGET_SHIPS_SEPERATE_GAPPS_BUILD := true
TARGET_BOOT_ANIMATION_RES := 720
TARGET_GAPPS_ARCH := arm64
TARGET_HAS_FOD := true
TARGET_SHIP_GCAM_GO := false
TARGET_FACE_UNLOCK_SUPPORTED := true
TARGET_USES_BLUR := true
EXTRA_FOD_ANIMATIONS := true
WITH_GAPPS=true
TARGET_GAPPS_ARCH := arm64

# Use gestures by default
PRODUCT_PRODUCT_PROPERTIES += \
    ro.boot.vendor.overlay.theme=com.android.internal.systemui.navbar.gestural
