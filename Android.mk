#
# Copyright (C) 2016 The CyanogenMod Project
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

LOCAL_PATH := $(call my-dir)

ifeq ($(TARGET_DEVICE),leo)

include $(call all-makefiles-under,$(LOCAL_PATH))

BT_IMAGES := \
    btfw30.tlv btnv30.bin btfw32.tlv btnv32.bin

BT_SYMLINKS := $(addprefix $(TARGET_OUT)/vendor/firmware/,$(notdir $(BT_IMAGES)))
$(BT_SYMLINKS): $(LOCAL_INSTALLED_MODULE)
	@echo "Bluetooth firmware link: $@"
	@mkdir -p $(dir $@)
	@rm -rf $@
	$(hide) ln -sf /bt_firmware/image/$(notdir $@) $@

ALL_DEFAULT_INSTALLED_MODULES += $(BT_SYMLINKS)

endif
