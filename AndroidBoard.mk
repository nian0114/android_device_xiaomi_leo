LOCAL_PATH := $(call my-dir)

include $(CLEAR_VARS)

# include the non-open-source counterpart to this file
-include vendor/xiaomi/leo/AndroidBoardVendor.mk

-include kernel/xiaomi/leo_prebuilt/AndroidKernel.mk

# Create symbolic links
$(shell mkdir -p $(TARGET_OUT_ETC)/firmware/wlan/qca_cld; \
        ln -sf  /system/etc/wifi/WCNSS_qcom_wlan_nv.bin \
        $(TARGET_OUT_ETC)/firmware/wlan/qca_cld/WCNSS_qcom_wlan_nv.bin; \
        ln -sf /system/etc/wifi/WCNSS_qcom_cfg.ini \
        $(TARGET_OUT_ETC)/firmware/wlan/qca_cld/WCNSS_qcom_cfg.ini; \
        ln -sf /persist/wlan_mac.bin \
        $(TARGET_OUT_ETC)/firmware/wlan/qca_cld/wlan_mac.bin;)
