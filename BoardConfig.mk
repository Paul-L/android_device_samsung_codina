USE_CAMERA_STUB := false
BOARD_USES_GENERIC_AUDIO := false

TARGET_SPECIFIC_HEADER_PATH := device/samsung/codina/include

# Architecture
TARGET_CPU_ABI := armeabi-v7a
TARGET_CPU_ABI2 := armeabi
TARGET_CPU_SMP := true
TARGET_ARCH_VARIANT := armv7-a-neon
TARGET_ARCH_VARIANT_CPU := cortex-a9
ARCH_ARM_HAVE_NEON := true
ARCH_ARM_HAVE_TLS_REGISTER := true

# Platform
TARGET_BOARD_PLATFORM := montblanc
TARGET_SOC := u8500
TARGET_BOOTLOADER_BOARD_NAME := montblanc
BOARD_USES_STE_HARDWARE := true

TARGET_NO_BOOTLOADER := true
TARGET_NO_RADIOIMAGE := true

TARGET_PROVIDES_INIT := true
TARGET_PROVIDES_INIT_TARGET_RC := true
TARGET_RECOVERY_INITRC := device/samsung/codina/rootdir/recovery.rc
#BOARD_HAS_VIBRATOR_IMPLEMENTATION := ../../device/samsung/codina/vibrator/vibrator.c

# Flags
TARGET_GLOBAL_CFLAGS += -mfpu=neon -mfloat-abi=softfp
TARGET_GLOBAL_CPPFLAGS += -mfpu=neon -mfloat-abi=softfp

# OMX
BOARD_USES_PROPRIETARY_OMX := samsung

# Kernel
BOARD_KERNEL_CMDLINE := "root=/dev/ram0 init=init rw console=ttyAMA2,115200n8 mem=256M initrd=0x800000,72M"
BOARD_KERNEL_BASE := 0x40000000
BOARD_KERNEL_PAGESIZE := 4096
TARGET_KERNEL_SOURCE := kernel/samsung/codina
TARGET_KERNEL_CONFIG := cyanogenmod_i8160_defconfig

# Filesystem
BOARD_NAND_PAGE_SIZE := 4096
BOARD_NAND_SPARE_SIZE := 128
BOARD_BOOTIMAGE_PARTITION_SIZE := 16777216
BOARD_SYSTEMIMAGE_PARTITION_SIZE := 641728512
BOARD_USERDATAIMAGE_PARTITION_SIZE := 1308622848
BOARD_FLASH_BLOCK_SIZE := 4096
TARGET_USERIMAGES_USE_EXT4 := true

# Audio
BOARD_USES_ALSA_AUDIO := true
+COMMON_GLOBAL_CFLAGS += -DSTE_AUDIO

# Graphics
BOARD_EGL_CFG := device/samsung/codina/configs/egl.cfg
USE_OPENGL_RENDERER := true
+COMMON_GLOBAL_CFLAGS += -DSTE_HARDWARE -DSTE_HDMI

# Enable WEBGL in WebKit
ENABLE_WEBGL := true

# HWComposer
BOARD_USES_HWCOMPOSER := true

# RIL
BOARD_USES_LIBSECRIL_STUB := true
BOARD_MOBILEDATA_INTERFACE_NAME := "pdp0"

# Wifi
BOARD_WLAN_DEVICE                := bcmdhd
BOARD_WLAN_DEVICE_REV            := bcm4330
WPA_SUPPLICANT_VERSION           := VER_0_8_X
BOARD_WPA_SUPPLICANT_DRIVER      := NL80211
BOARD_WPA_SUPPLICANT_PRIVATE_LIB := lib_driver_cmd_bcmdhd
BOARD_HOSTAPD_DRIVER             := NL80211
BOARD_HOSTAPD_PRIVATE_LIB        := lib_driver_cmd_bcmdhd
WIFI_DRIVER_MODULE_PATH          := "/system/lib/modules/dhd.ko"
WIFI_DRIVER_FW_PATH_PARAM        := "/sys/module/dhd/parameters/firmware_path"
WIFI_DRIVER_FW_PATH_STA          := "/system/etc/wifi/bcmdhd_sta.bin"
WIFI_DRIVER_FW_PATH_AP           := "/system/etc/wifi/bcmdhd_apsta.bin"
WIFI_DRIVER_FW_PATH_P2P          := "/system/etc/wifi/bcmdhd_p2p.bin"
WIFI_DRIVER_MODULE_NAME          := "dhd"
WIFI_DRIVER_MODULE_ARG           := "firmware_path=/system/etc/wifi/bcmdhd_sta.bin nvram_path=/system/etc/wifi/nvram_net.txt"
WIFI_DRIVER_MODULE_AP_ARG        := "firmware_path=/system/etc/wifi/bcmdhd_apsta.bin nvram_path=/system/etc/wifi/nvram_net.txt"
WIFI_BAND                        := 802_11_ABG

# Bluetooth
BOARD_HAVE_BLUETOOTH := true
BOARD_HAVE_BLUETOOTH_BCM := true

# Vold
BOARD_VOLD_MAX_PARTITIONS := 12
BOARD_VOLD_EMMC_SHARES_DEV_MAJOR := true
BOARD_VOLD_DISC_HAS_MULTIPLE_MAJORS := true
TARGET_USE_CUSTOM_LUN_FILE_PATH := "/sys/devices/platform/musb-ux500.0/musb-hdrc/gadget/lun%d/file"

# Recovery
BOARD_CUSTOM_RECOVERY_KEYMAPPING := ../../device/samsung/codina/recovery/recovery_keys.c
BOARD_CUSTOM_GRAPHICS := ../../../device/samsung/codina/recovery/graphics.c
BOARD_UMS_LUNFILE := "/sys/devices/platform/musb-ux500.0/musb-hdrc/gadget/lun0/file"
BOARD_USES_MMCUTILS := true
BOARD_HAS_NO_MISC_PARTITION := true
BOARD_HAS_NO_SELECT_BUTTON := true
BOARD_SUPPRESS_EMMC_WIPE := true

# Charging mode
BOARD_CHARGING_MODE_BOOTING_LPM := /sys/class/power_supply/battery/batt_lp_charging
BOARD_BATTERY_DEVICE_NAME := "battery"
BOARD_CHARGER_RES := device/samsung/codina/res/charger

# Releasetools
TARGET_RELEASETOOL_OTA_FROM_TARGET_SCRIPT := device/samsung/codina/releasetools/codina_ota_from_target_files
TARGET_RELEASETOOL_IMG_FROM_TARGET_SCRIPT := device/samsung/codina/releasetools/codina_img_from_target_files
BOARD_CUSTOM_BOOTIMG_MK := device/samsung/codina/shbootimg.mk

TARGET_OTA_ASSERT_DEVICE := codina,i8160,GT-I8160

# Inherit from the proprietary version
-include vendor/samsung/codina/BoardConfigVendor.mk
