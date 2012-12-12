LOCAL_PATH:= $(call my-dir)

include $(LOCAL_PATH)/../Config.mk

ifneq ($(CEDARX_DEBUG_CEDARV),Y)
ifeq ($(CEDARX_ANDROID_VERSION),4)
include $(LOCAL_PATH)/LIB_F23/Android.mk
else
# TODO: Why is $(CEDARX_ANDROID_CODE) not getting defined?
include $(LOCAL_PATH)/LIB_JB_F23/Android.mk
endif
endif
