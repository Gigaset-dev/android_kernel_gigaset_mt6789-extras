# Connectivity

obj-$(CONFIG_MTK_COMBO) += connectivity/common/
obj-$(CONFIG_MTK_COMBO_WIFI) += connectivity/wlan/adaptor/
obj-$(CONFIG_MTK_COMBO_GPS) += connectivity/gps/
obj-$(CONFIG_MTK_FMRADIO) += connectivity/fmradio/
obj-$(CONFIG_MTK_CONNFEM) += connectivity/connfem/
obj-$(CONFIG_MTK_CONNINFRA) += connectivity/conninfra/

ifneq ($(filter "CONSYS_6789", $(CONFIG_MTK_COMBO_CHIP)),)
    obj-$(CONFIG_MTK_COMBO_WIFI) += connectivity/wlan/core/gen4-mt79xx/
    obj-$(CONFIG_MTK_COMBO_BT) += connectivity/bt/mt66xx/
endif

# GPU
include gpu/mt6789/mali_valhall/mali-r32p1/drivers/gpu/arm/Makefile
include gpu/mt6789/mali_valhall/mali-r32p1/drivers/base/arm/Makefile
