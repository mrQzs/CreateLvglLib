#
# Makefile
#
# CC = gcc
CC = armgcc
LVGL_DIR ?= $(shell cd)
LVGL_DIR_NAME ?= lvgl
LV_DRIVERS_DIR_NAME ?= lv_drivers
OBJ_DIR ?= $(LVGL_DIR)/obj

CFLAGS ?= -w -g0 -O3 -pipe -fPIC -I$(LVGL_DIR)/ 
LDFLAGS ?= -lpthread
CVERSION ?= -std=c99 
TARGET = $(LVGL_DIR)/target/liblvgl.so

include $(LVGL_DIR)/lv_drivers/lv_drivers.mk
include $(LVGL_DIR)/lvgl/lvgl.mk

SRCS =  $(CSRCS)
OBJS = $(addprefix $(OBJ_DIR)/,$(patsubst %.c,%.o,$(notdir $(SRCS))))
DELOBJS = $(addprefix .\obj\,$(patsubst %.c,%.o,$(notdir $(SRCS))))

all: default

$(OBJ_DIR)/%.o: %.c
	@$(CC) $(CVERSION) $(CFLAGS) -c $< -o $@
	@echo "CC $<"

default: $(OBJS)
	$(CC) -g -shared -o $(TARGET) $^ $(LDFLAGS) $(CVERSION)

.PHONY: clean
clean:
	del .\target\liblvgl.so
	del $(DELOBJS)