$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/languages_full.mk)

# Inherit device configuration
$(call inherit-product, device/samsung/x1s/device.mk)

### BOOTANIMATION
# vendor/lineage/config/common_full_phone.mk
TARGET_SCREEN_HEIGHT := 3200
TARGET_SCREEN_WIDTH := 1440
# vendor/lineage/config/common.mk

### LINEAGE
$(call inherit-product, vendor/lineage/config/common_full_phone.mk)

## Device identifier. This must come after all inclusions
PRODUCT_NAME := lineage_x1s
PRODUCT_DEVICE := x1s
PRODUCT_BRAND := samsung
PRODUCT_MODEL := SM-G981B
PRODUCT_MANUFACTURER := samsung
PRODUCT_PDA_MODEL := G981B
PRODUCT_PDA_MODEL_VERSION := XXU5CUA3
PRODUCT_PDA_VERSION := $(PRODUCT_PDA_MODEL)$(PRODUCT_PDA_MODEL_VERSION)
PRODUCT_SHIPPING_API_LEVEL := 29
PRODUCT_GMS_CLIENTID_BASE := android-samsung

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRODUCT_NAME=x1sxxx \
    PRODUCT_DEVICE=x1s \
    PRIVATE_BUILD_DESC="x1sxxx-user 11 RP1A.200720.012 $(PRODUCT_PDA_VERSION) release-keys"

BUILD_FINGERPRINT := samsung/x1sxxx/x1s:11/RP1A.200720.012/$(PRODUCT_PDA_VERSION):user/release-keys

PRODUCT_PRODUCT_PROPERTIES += \
    ro.build.PDA=$(PRODUCT_PDA_VERSION)

ifneq ($(LINEAGE_DEV_CERTIFICATE),)
    PRODUCT_DEFAULT_DEV_CERTIFICATE := $(LINEAGE_DEV_CERTIFICATE)
endif
