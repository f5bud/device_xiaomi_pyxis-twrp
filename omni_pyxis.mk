# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
# http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
#

$(call inherit-product, build/target/product/embedded.mk)

# Inherit from our custom product configuration
$(call inherit-product, vendor/omni/config/common.mk)

# Device identifier. This must come after all inclusions
PRODUCT_NAME   := omni_pyxis
PRODUCT_DEVICE := pyxis
PRODUCT_BRAND  := Xiaomi
PRODUCT_MODEL  := Mi9Lite

PRODUCT_DEFAULT_PROPERTY_OVERRIDES += \
    sys.usb.controller=a600000.dwc3 \
    sys.usb.rndis.func.name=rndis_bam \
    sys.usb.rmnet.func.name=rmnet_bam \
    persist.sys.isUsbOtgEnabled=true \
    vendor.gatekeeper.disable_spu=true

PRODUCT_PROPERTY_OVERRIDES += \
	ro.adb.secure=0 \
	ro.treble.enabled=true \
	ro.boot.avb_version=1.0 \
	ro.boot.vbmeta.avb_version=1.0 \
	ro.vendor.build.security_patch=2099-12-31
