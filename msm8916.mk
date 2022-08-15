#
# Copyright (C) 2022 Team Win Recovery Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit AOSP product makefiles
$(call inherit-product, $(SRC_TARGET_DIR)/product/base.mk)

# Inherit OMNI product makefiles
$(call inherit-product, vendor/omni/config/common.mk)

# USB
PRODUCT_PROPERTY_OVERRIDES += \
    sys.usb.configfs=0 \
    sys.usb.ffs.aio_compat=1

# Soong namespaces
PRODUCT_SOONG_NAMESPACES += \
    $(LOCAL_PATH)
