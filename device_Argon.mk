$(call inherit-product, $(SRC_TARGET_DIR)/product/languages_full.mk)

# The gps config appropriate for this device
#$(call inherit-product, device/common/gps/gps_us_supl.mk) <- Disable it to use this Part-Source or ERROR 1.

$(call inherit-product-if-exists, vendor/Nokia/Argon/Argon-vendor.mk)

DEVICE_PACKAGE_OVERLAYS += device/Argon/Argon/overlay

LOCAL_PATH := device/Nokia/Argon
ifeq ($(TARGET_PREBUILT_KERNEL),)
	LOCAL_KERNEL := $(LOCAL_PATH)/kernel
else
	LOCAL_KERNEL := $(TARGET_PREBUILT_KERNEL)
endif

PRODUCT_COPY_FILES += 
    $(LOCAL_KERNEL):kernel

$(call inherit-product, build/target/product/full.mk)

PRODUCT_BUILD_PROP_OVERRIDES += BUILD_UTC_DATE=0
PRODUCT_NAME := full_Argon
PRODUCT_DEVICE := Argon
