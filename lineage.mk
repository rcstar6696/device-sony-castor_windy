# Boot animation
TARGET_SCREEN_HEIGHT := 1200
TARGET_SCREEN_WIDTH := 1920

# Inherit AOSP Device parts
$(call inherit-product, device/sony/castor_windy/aosp_sgp511.mk)

# Inherit CM Shinano device parts
$(call inherit-product, device/sony/shinano-common/platform2.mk)

# Inherit CM common Phone stuff.
$(call inherit-product, vendor/cm/config/common_full_tablet_wifionly.mk)

# Dalvik/HWUI
$(call inherit-product-if-exists, frameworks/native/build/phone-xxhdpi-3072-dalvik-heap.mk)
$(call inherit-product-if-exists, frameworks/native/build/phone-xxhdpi-3072-hwui-memory.mk)

# ACDB Loader files
$(call inherit-product, vendor/8974-Sony-Project/audio/audio_proprietary.mk)


PRODUCT_BUILD_PROP_OVERRIDES += PRODUCT_NAME=SGP511
PRODUCT_BUILD_PROP_OVERRIDES += BUILD_FINGERPRINT=Sony/SGP511/SGP511:5.1.1/23.4.A.0.546/3701983898:user/release-keys
PRODUCT_BUILD_PROP_OVERRIDES += PRIVATE_BUILD_DESC="SGP511-user 5.1.1 23.4.A.0.546 3701983898 release-keys"

# Override Product Name for CyanogenMod
PRODUCT_NAME := lineage_castor_windy
PRODUCT_MODEL := Xperia Z2 Tablet WiFi
