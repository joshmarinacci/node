BASE_PATH := $(call my-dir)


ifeq ($(TARGET_ARCH),arm)
    ifneq ($(strip $(ARCH_ARM_HAVE_ARMV7A)),true)
        $(warning WARNING: Building on ARM with non-ARMv7 variant. On ARM, V8 is well tested only on ARMv7.)
    endif
endif

# libv8.so
# ===================================================
include $(CLEAR_VARS)



#include $(BASE_PATH)/Android.mksnapshot.mk
include $(BASE_PATH)/Android.libv8.mk


