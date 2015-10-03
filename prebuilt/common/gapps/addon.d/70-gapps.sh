#!/sbin/sh
# 
# /system/addon.d/70-gapps.sh
#
. /tmp/backuptool.functions

list_files() {
cat <<EOF
lib/libjni_latinime.so
lib/libAppDataSearch.so
lib/libgames_rtmp_jni.so
etc/permissions/com.google.widevine.software.drm.xml
etc/permissions/com.google.android.maps.xml
etc/permissions/com.google.android.media.effects.xml
etc/permissions/com.google.android.camera2.xml
etc/permissions/features.xml
etc/permissions/com.google.android.ble.xml
etc/preferred-apps/google.xml
etc/gprop.mokee
priv-app/GoogleBackupTransport.apk
priv-app/SetupWizard.apk
priv-app/GoogleLoginService.apk
priv-app/PrebuiltGmsCore.apk
priv-app/Phonesky.apk
priv-app/GoogleFeedback.apk
priv-app/GoogleOneTimeInitializer.apk
priv-app/GoogleServicesFramework.apk
priv-app/GooglePartnerSetup.apk
framework/com.google.widevine.software.drm.jar
framework/com.google.android.camera2.jar
framework/com.google.android.ble.jar
framework/com.google.android.maps.jar
framework/com.google.android.media.effects.jar
app/GoogleContactsSyncAdapter.apk
app/ChromeBookmarksSyncAdapter.apk
app/GoogleCalendarSyncAdapter.apk
EOF
}

case "$1" in
  backup)
    list_files | while read FILE DUMMY; do
      backup_file $S/$FILE
    done
  ;;
  restore)
    list_files | while read FILE REPLACEMENT; do
      R=""
      [ -n "$REPLACEMENT" ] && R="$S/$REPLACEMENT"
      [ -f "$C/$S/$FILE" ] && restore_file $S/$FILE $R
    done
  ;;
  pre-backup)
    # Stub
  ;;
  post-backup)
    # Stub
  ;;
  pre-restore)
    # Stub
  ;;
  post-restore)
   rm -f /system/app/QuickSearchBox.apk
   rm -f /system/app/Velvet.apk
   rm -f /system/app/Vending.apk
   rm -f /system/app/BrowserProviderProxy.apk
   rm -f /system/app/PartnerBookmarksProvider.apk
   rm -f /system/priv-app/QuickSearchBox.apk
   rm -f /system/priv-app/Velvet.apk
   rm -f /system/priv-app/Vending.apk
   rm -f /system/priv-app/BrowserProviderProxy.apk
   rm -f /system/priv-app/PartnerBookmarksProvider.apk
  ;;
esac
