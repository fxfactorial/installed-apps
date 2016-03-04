# -*- makefile -*-
export THEOS_PORT=22

# These must come before THEOS's include
override SDKBINPATH := ${shell echo "/home/`whoami`/.nix-profile/bin"}
override SDKTARGET := armv7-apple-darwin11
override _SDK_DIR := /home/gar/.nix-profile
override _THEOS_PLATFORM_LIPO := armv7-apple-darwin11-lipo

include $(THEOS)/makefiles/common.mk

TOOL_NAME = installedapps
installedapps_FILES = main.mm
CFLAGS+=-std=c++11

include $(THEOS_MAKE_PATH)/tool.mk
