#
# Copyright (C) 2015 The Android Open Source Project
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

# rild
PRODUCT_PACKAGES += \
    BasicSmsReceiver \
    messaging \
    libstlport \
    rild

PRODUCT_COPY_FILES := \
    device/asus/tilapia/rootdir/fstab.grouper:root/fstab.grouper \
    device/asus/tilapia/rootdir/init.tilapia.rc:root/init.grouper.rc \
    device/asus/tilapia/rootdir/init.tilapia.usb.rc:root/init.grouper.usb.rc

DEVICE_PACKAGE_OVERLAYS := \
    device/asus/tilapia/overlay

# Allow tethering without provisioning app
PRODUCT_PROPERTY_OVERRIDES += \
    net.tethering.noprovisioning=true

# the actual meat of the device-specific product definition
$(call inherit-product, device/asus/grouper/device-common.mk)

# inherit from the non-open-source side, if present
$(call inherit-product-if-exists, vendor/asus/tilapia/device-vendor.mk)
