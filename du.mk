TARGET_BOOTANIMATION_SIZE := 800x450

# Release name
PRODUCT_RELEASE_NAME := tilapia

# Inherit some common stuff.
$(call inherit-product, vendor/du/config/common_full_phone.mk)

# Enhanced NFC
$(call inherit-product, vendor/du/config/nfc_enhanced.mk)

# Inherit device configuration
$(call inherit-product, device/asus/tilapia/full_tilapia.mk)

# Device identifier. This must come after all inclusions
PRODUCT_DEVICE := tilapia
PRODUCT_NAME := du_tilapia
PRODUCT_BRAND := Google
PRODUCT_MODEL := Nexus 7
PRODUCT_MANUFACTURER := ASUS

PRODUCT_RESTRICT_VENDOR_FILES := false

#Set build fingerprint / ID / Product Name ect.
PRODUCT_BUILD_PROP_OVERRIDES += PRODUCT_NAME=nakasig BUILD_FINGERPRINT="google/nakasig/tilapia:5.1/LMY47D/1743759:user/release-keys" PRIVATE_BUILD_DESC="nakasig-user 5.1 LMY47D 1743759 release-keys"
