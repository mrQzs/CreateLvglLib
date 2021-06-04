include $(LVGL_DIR)/$(LV_DRIVERS_DIR_NAME)/display/display.mk
#include $(LVGL_DIR)/$(LV_DRIVERS_DIR_NAME)/gtkdrv/gtkdrv.mk
include $(LVGL_DIR)/$(LV_DRIVERS_DIR_NAME)/indev/indev.mk
#include $(LVGL_DIR)/$(LV_DRIVERS_DIR_NAME)/win32drv/win32drv.mk

#CSRCS += win_drv.c

DEPPATH += --dep-path $(LVGL_DIR)/$(LV_DRIVERS_DIR_NAME)
VPATH += :$(LVGL_DIR)/$(LV_DRIVERS_DIR_NAME)

CFLAGS += "-I$(LVGL_DIR)/$(LV_DRIVERS_DIR_NAME)"

