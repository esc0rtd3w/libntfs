CELL_SDK ?= /c/cell
CELL_MK_DIR ?= $(CELL_SDK)/samples/mk

include $(CELL_MK_DIR)/sdk.makedef.mk

BUILD_TAG = libntfs_prx
PPU_LIB_TARGET	= libntfs_prx.a
PPU_OPTIMIZE_LV := -Os

PPU_INCDIRS = -Iinclude
PPU_SRCS = $(wildcard source/*.c)
#PPU_SRCS += $(wildcard source/libext2fs/*.c)

#DEFINES += -DWITH_EXT_SUPPORT
#DEFINES += -DPS3_STDIO
DEFINES += -DBIGENDIAN -DPS3_GEKKO -DHAVE_CONFIG_H -DPRX

#PPU_CFLAGS := -Os -Wall -mcpu=cell -fno-strict-aliasing $(PPU_INCDIRS) $(DEFINES) -ffunction-sections -fdata-sections -fno-builtin-printf -nodefaultlibs -std=gnu99 -Wno-shadow -Wno-unused-parameter
PPU_CFLAGS := -Os -Wall -mcpu=cell -fno-strict-aliasing $(PPU_INCDIRS) $(DEFINES) -std=gnu99

include $(CELL_MK_DIR)/sdk.target.mk