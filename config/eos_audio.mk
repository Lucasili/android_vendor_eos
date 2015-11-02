#
# eos Audio Files
#

ALARM_PATH := vendor/eos/prebuilt/common/media/audio/alarms
NOTIFICATION_PATH := vendor/eos/prebuilt/common/media/audio/notifications
RINGTONE_PATH := vendor/eos/prebuilt/common/media/audio/ringtones
UI_PATH := vendor/eos/prebuilt/common/media/audio/ui

# Notifications
PRODUCT_COPY_FILES += \
	$(NOTIFICATION_PATH)/Charger_Connection.ogg:system/media/audio/notifications/Charger_Connection.ogg \
	$(NOTIFICATION_PATH)/S_Whistle.ogg:system/media/audio/notifications/S_Whistle.ogg

