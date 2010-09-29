#
# Copyright (C) 2008 The Android Open Source Project
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#      http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
#

DEVICE_PACKAGE_OVERLAYS := device/htc/desirec/overlay

PRODUCT_PACKAGES := \
    sensors.desirec

PRODUCT_PROPERTY_OVERRIDES += \
    ro.ril.htcmaskw1.bitmask = 4294967295
    ro.ril.htcmaskw1 = 268449905
    ro.com.android.dataroaming = true
    ro.com.google.locationfeatures = 1
    ro.telephony.default_network=4
    rild.libpath=/system/lib/libhtc_ril.so


# wlan.ko and tun.ko
PRODUCT_COPY_FILES += \
    vendor/htc/desirec/wlan.ko:system/lib/modules/wlan.ko \
    vendor/htc/desirec/tun.ko:system/lib/modules/tun.ko \
    vendor/htc/desirec/lights.sh:system/etc/lights.sh

# proprietary side of the device
$(call inherit-product-if-exists, vendor/htc/desirec/device_desirec-vendor.mk)

# bits that are shared between dream and sapphire
#$(call inherit-product, device/htc/desirec/boot/Android.mk)

# stuff common to all HTC phones
$(call inherit-product, device/htc/common/common_small.mk)

