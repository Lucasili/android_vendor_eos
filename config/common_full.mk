# Inherit additional stuff
$(call inherit-product, vendor/eos/config/common.mk)

# Include CM audio files
include vendor/eos/config/eos_audio.mk

# Optional packages
PRODUCT_PACKAGES += \
    CMSettingsProvider
#    LiveWallpapers \
#    LiveWallpapersPicker \
#    PhaseBeam

