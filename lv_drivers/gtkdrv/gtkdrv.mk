CSRCS += gtkdrv.c

DEPPATH += --dep-path $(LVGL_DIR)/$(LV_DRIVERS_DIR_NAME)/gtkdrv
VPATH += :$(LVGL_DIR)/$(LV_DRIVERS_DIR_NAME)/gtkdrv

CFLAGS += "-I$(LVGL_DIR)/$(LV_DRIVERS_DIR_NAME)/gtkdrv"