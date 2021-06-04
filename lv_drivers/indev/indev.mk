CSRCS += evdev.c

DEPPATH += --dep-path $(LVGL_DIR)/$(LV_DRIVERS_DIR_NAME)/indev
VPATH += :$(LVGL_DIR)/$(LV_DRIVERS_DIR_NAME)/indev

CFLAGS += "-I$(LVGL_DIR)/$(LV_DRIVERS_DIR_NAME)/indev"