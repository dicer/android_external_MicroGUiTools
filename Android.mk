LOCAL_PATH := $(call my-dir)
include $(CLEAR_VARS)

appcompat_dir := ../../frameworks/support/v7/appcompat
res_dir := microg-ui-tools/src/main/res  $(appcompat_dir)/res

LOCAL_MODULE := MicroGUiTools
LOCAL_SRC_FILES := $(call all-java-files-under, microg-ui-tools/src/main/java)
LOCAL_RESOURCE_DIR := $(addprefix $(LOCAL_PATH)/, $(res_dir))
LOCAL_MANIFEST_FILE := $(LOCAL_PATH)/microg-ui-tools/src/main/AndroidManifest.xml

LOCAL_AAPT_FLAGS := --auto-add-overlay \
    --extra-packages android.support.v7.appcompat


LOCAL_STATIC_JAVA_LIBRARIES := android-support-v4 android-support-v7-appcompat

include $(BUILD_STATIC_JAVA_LIBRARY)
