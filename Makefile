# Makefile -  Makefile for a VSB Layer
#
# Copyright (c) 2022 Wind River Systems, Inc.
#
#
PRE_BUILD_DIRS = src

POSTBUILD_RTP_DIRS = src


include $(WIND_KRNL_MK)/rules.layers.mk

