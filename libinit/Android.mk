LOCAL_PATH := $(call my-dir)

include $(CLEAR_VARS)
LOCAL_MODULE := libinit_samsung_msm8916_headers
LOCAL_EXPORT_C_INCLUDE_DIRS := $(LOCAL_PATH)/include
include $(BUILD_HEADER_LIBRARY)

include $(CLEAR_VARS)
LOCAL_MODULE_TAGS := optional

LOCAL_C_INCLUDES := \
    $(LOCAL_PATH)/include

LOCAL_SRC_FILES := \
    libinit_utils.cpp \
    libinit_variant.cpp

LOCAL_WHOLE_STATIC_LIBRARIES := libbase
LOCAL_MODULE := libinit_samsung_msm8916
include $(BUILD_STATIC_LIBRARY)

include $(CLEAR_VARS)
LOCAL_MODULE_TAGS := optional

LOCAL_C_INCLUDES := \
    $(LOCAL_PATH)/include \
    system/core/init

LOCAL_SRC_FILES := init_samsung_msm8916.cpp
LOCAL_WHOLE_STATIC_LIBRARIES := libinit_samsung_msm8916
LOCAL_MODULE := init_samsung_msm8916
include $(BUILD_STATIC_LIBRARY)
