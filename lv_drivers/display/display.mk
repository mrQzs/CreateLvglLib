CSRCS += fbdev.c

DEPPATH += --dep-path $(LVGL_DIR)/$(LV_DRIVERS_DIR_NAME)/display
VPATH += :$(LVGL_DIR)/$(LV_DRIVERS_DIR_NAME)/display

CFLAGS += "-I$(LVGL_DIR)/$(LV_DRIVERS_DIR_NAME)/display"