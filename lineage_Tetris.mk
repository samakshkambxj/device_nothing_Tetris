
#
# Copyright (C) 2022 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit_only.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Enable ADPF pipeline for UI performance
PRODUCT_PRODUCT_PROPERTIES += \
persist.vendor.power.adpf.enable=true \
ro.vendor.powerhal.adpf.enable=true

PRODUCT_VENDOR_PROPERTIES += \
    debug.sf.enable_adpf_cpu_hint=true

# Inherit LineageOS common config
$(call inherit-product, vendor/lineage/config/common_full_phone.mk)

#gpu
GPU_FREQS_PATH := /sys/devices/platform/13000000.mali/devfreq/available_frequencies
GPU_MIN_FREQ_PATH := /sys/devices/platform/13000000.mali/devfreq/min_freq

# Inherit from Tetris device
$(call inherit-product, device/nothing/Tetris/device.mk)

# Bootanimation
TARGET_BOOT_ANIMATION_RES := 1080

PRODUCT_NAME := lineage_Tetris
PRODUCT_DEVICE := Tetris
PRODUCT_BRAND := Nothing
PRODUCT_MANUFACTURER := Nothing
PRODUCT_MODEL := A015

PRODUCT_GMS_CLIENTID_BASE := android-nothing

DEVICE_CODENAME := Tetris

PRODUCT_BUILD_PROP_OVERRIDES += \
    BuildDesc="Tetris 16 BP2A.250605.031.A3 2608121726 release-keys" \
    BuildFingerprint=Nothing/Tetris/Tetris:16/BP2A.250605.031.A3/2608121726:user/release-keys \
    DeviceProduct=$(DEVICE_CODENAME) \
    DeviceName=$(DEVICE_CODENAME) \
    SystemDevice=$(DEVICE_CODENAME) \
    SystemName=$(DEVICE_CODENAME)
