# Inherit from the common tree
$(call inherit-product, device/samsung/exynos990-common/common.mk)

# Inherit proprietary files
$(call inherit-product, vendor/samsung/x1s/x1s-vendor.mk)

# Setup dalvik vm configs
$(call inherit-product, frameworks/native/build/phone-xhdpi-6144-dalvik-heap.mk)

DEVICE_PATH := device/samsung/x1s

# Device uses high-density artwork where available
PRODUCT_AAPT_CONFIG := large
PRODUCT_AAPT_PREF_CONFIG := xxhdpi
PRODUCT_AAPT_PREBUILT_DPI := xxxhdpi xxhdpi xhdpi hdpi

# Overlays
DEVICE_PACKAGE_OVERLAYS += \
	$(DEVICE_PATH)/overlay \
	$(DEVICE_PATH)/overlay-lineage

PRODUCT_SOONG_NAMESPACES += \
    $(DEVICE_PATH)
