LOCAL_PATH := $(call my-dir)

#################################
include $(CLEAR_VARS)

LOCAL_MODULE := buildbundle
LOCAL_MODULE_TAGS := optional

LOCAL_SRC_FILES := $(call all-java-files-under, src)

LOCAL_JAR_MANIFEST := BuildBundle.mf

LOCAL_STATIC_JAVA_LIBRARIES := guavalib

include $(BUILD_HOST_JAVA_LIBRARY)

##################################
include $(CLEAR_VARS)

LOCAL_MODULE_TAGS := optional

LOCAL_PREBUILT_EXECUTABLES := buildbundle

include $(BUILD_HOST_PREBUILT)

##################################
include $(CLEAR_VARS)

LOCAL_MODULE_TAGS := optional

LOCAL_PREBUILT_EXECUTABLES := buildsebundle

include $(BUILD_HOST_PREBUILT)
