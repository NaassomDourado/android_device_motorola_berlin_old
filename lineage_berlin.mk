#
# Copyright (C) 2022 The LineageOS Project
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

# Inherit from berlin device
$(call inherit-product, device/motorola/berlin/berlin.mk)

# Inherit some common Lineage stuff.
$(call inherit-product, vendor/lineage/config/common_full_phone.mk)

# Bootanimation Resolution.
TARGET_BOOT_ANIMATION_RES := 1080

PRODUCT_NAME := lineage_berlin
PRODUCT_DEVICE := berlin
PRODUCT_MANUFACTURER := motorola
PRODUCT_BRAND := motorola
PRODUCT_MODEL := motorola edge 20

PRODUCT_GMS_CLIENTID_BASE := android-motorola

PRODUCT_BUILD_PROP_OVERRIDES += \
    TARGET_PRODUCT=berlin_global \
    PRODUCT_NAME="berlin" \
    PRIVATE_BUILD_DESC="berlin_global-user 12 S1RG32.53-18-22-2 0e3b7 release-keys"

BUILD_FINGERPRINT := motorola/berlin_global/berlin:12/S1RGS32.53-18-22-2/0e3b7:user/release-keys