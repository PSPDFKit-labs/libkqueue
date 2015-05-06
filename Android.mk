LOCAL_PATH := $(call my-dir)
include $(CLEAR_VARS)

LOCAL_MODULE		:= libkqueue
LOCAL_C_INCLUDES	:= $(LOCAL_PATH)/src/common \
					   $(LOCAL_PATH)/android \
					   $(LOCAL_PATH)/include
LOCAL_CFLAGS		:= -std=c99 -D_XOPEN_SOURCE=600 -fvisibility=hidden -DCLANG_TLS_WORKAROUND
NDK_APP_CFLAGS		+= -DNDEBUG -Os -g0
LOCAL_SRC_FILES		:=  \
	src/common/filter.c \
    src/common/knote.c \
	src/common/map.c \
	src/common/kevent.c \
	src/common/kqueue.c \
	src/posix/platform.c \
	src/linux/platform.c \
	src/linux/read.c \
	src/linux/write.c \
	src/linux/user.c \
	src/linux/vnode.c \
	src/linux/timer.c \
	src/posix/signal.c

include $(BUILD_STATIC_LIBRARY)

