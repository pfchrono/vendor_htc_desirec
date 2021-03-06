# Build configuration for AOSP on Dream & Sapphire
$(call inherit-product, build/target/product/generic.mk)
include vendor/htc/desirec/device_desirec.mk

PRODUCT_PACKAGES += \
    DeskClock \
    DownloadProvider \
    GlobalSearch \
    Launcher \
    LiveWallpapers \
    SoundRecorder \
    VoiceDialer 

# How this product is called in the build system
PRODUCT_NAME := desirec

# Which actual hardware this is based on (this is a path under vendor/)
PRODUCT_BRAND := verizon
PRODUCT_DEVICE := desirec

# The user-visible product name
PRODUCT_MODEL := Droid Eris
PRODUCT_MANUFACTURER := HTC

# Pick up some sounds
include frameworks/base/data/sounds/AudioPackage4.mk

# This is the list of locales included in AOSP builds
PRODUCT_LOCALES := en_US en_GB fr_FR it_IT de_DE es_ES mdpi

# Don't add product info to the default build.prop
PRODUCT_INFO_PREBUILT := true
