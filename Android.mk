LOCAL_PATH := $(call my-dir)
include $(CLEAR_VARS)

LOCAL_MODULE := MicroGUiTools
LOCAL_SRC_FILES := $(call all-java-files-under, microg-ui-tools/src/main/java)
LOCAL_RESOURCE_DIR := $(LOCAL_PATH)/microg-ui-tools/src/main/res
LOCAL_MANIFEST_FILE := $(LOCAL_PATH)/microg-ui-tools/src/main/AndroidManifest.xml
LOCAL_STATIC_JAVA_LIBRARIES := android-support-v4 android-support-v7-appcompat

include $(BUILD_STATIC_JAVA_LIBRARY)
