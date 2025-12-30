LOCAL_PATH := $(call my-dir)

include $(CLEAR_VARS)

LOCAL_MODULE := libogg
LOCAL_ARM_MODE := arm
LOCAL_CFLAGS += -I$(LOCAL_PATH)/../include -ffast-math -fsigned-char
ifeq ($(TARGET_ARCH),arm)
	LOCAL_CFLAGS += -marm
endif

LOCAL_SRC_FILES := \
	bitwise.c \
	framing.c

include $(BUILD_SHARED_LIBRARY)
