LOCAL_PATH := $(call my-dir)
LOCAL_PATH_B := $(LOCAL_PATH)

LOCAL_MTK_GPU_VERSION := mali_valhall_r32p1_mt6789
LOCAL_MTK_PLATFORM := $(word 4,$(subst _, ,$(LOCAL_MTK_GPU_VERSION)))
GPU_OPTS := MTK_GPU_VERSION=$(LOCAL_MTK_GPU_VERSION) MTK_PLATFORM=$(LOCAL_MTK_PLATFORM)
GPU_OPTS += CONFIG_MALI_REAL_HW=y
GPU_OPTS += CONFIG_MALI_DEBUG=y
GPU_OPTS += CONFIG_MALI_MIDGARD_DVFS=y
GPU_OPTS += CONFIG_MALI_DEVFREQ=y
GPU_OPTS += CONFIG_MALI_MTK_DEBUG=y
GPU_OPTS += CONFIG_MALI_MTK_DEBUG_DFD=y
GPU_OPTS += CONFIG_MALI_MTK_MEM_TRACK=y
GPU_OPTS += CONFIG_MALI_MTK_DEVFREQ=y
GPU_OPTS += CONFIG_MALI_MTK_DEVFREQ_THERMAL=y
GPU_OPTS += CONFIG_MALI_MTK_GPU_BM_2=y
GPU_OPTS += CONFIG_MALI_MTK_BRINGUP=y
include $(LOCAL_PATH_B)/gpu_$(word 1,$(subst _, ,$(LOCAL_MTK_GPU_VERSION)))/mali_$(word 2,$(subst _, ,$(LOCAL_MTK_GPU_VERSION)))/mali-$(word 3,$(subst _, ,$(LOCAL_MTK_GPU_VERSION)))/drivers/gpu/arm/midgard/Android.mk

LOCAL_MTK_GPU_VERSION := mali_valhall_r32p1
GPU_OPTS := MTK_GPU_VERSION=$(LOCAL_MTK_GPU_VERSION)
GPU_OPTS += CONFIG_MALI_MEMORY_GROUP_MANAGER=y
include $(LOCAL_PATH_B)/gpu_$(word 1,$(subst _, ,$(LOCAL_MTK_GPU_VERSION)))/mali_$(word 2,$(subst _, ,$(LOCAL_MTK_GPU_VERSION)))/mali-$(word 3,$(subst _, ,$(LOCAL_MTK_GPU_VERSION)))/drivers/base/arm/memory_group_manager/Android.mk

LOCAL_MTK_GPU_VERSION := mali_valhall_r32p1
GPU_OPTS := MTK_GPU_VERSION=$(LOCAL_MTK_GPU_VERSION)
GPU_OPTS += CONFIG_MALI_PROTECTED_MEMORY_ALLOCATOR=y
include $(LOCAL_PATH_B)/gpu_$(word 1,$(subst _, ,$(LOCAL_MTK_GPU_VERSION)))/mali_$(word 2,$(subst _, ,$(LOCAL_MTK_GPU_VERSION)))/mali-$(word 3,$(subst _, ,$(LOCAL_MTK_GPU_VERSION)))/drivers/base/arm/protected_memory_allocator/Android.mk

