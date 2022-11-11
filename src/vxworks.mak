# vxworks.mak - for awk
#
# Copyright 2022  Wind River Systems, Inc.
#

include $(WIND_USR_MK)/defs.vsbvars.mk
include $(WIND_USR_MK)/defs.library.mk
include $(VSB_DIR)/mk/defs.autotools.mk


RTP_BASE_DIR = awk

EXE= $(VXE).vxe

default : install

build :
		make $(AUTOTOOLS_ENV)
		
install : build
		@echo building $(VSBL_NAME): installing $(VXE)
		cp a.out $(ROOT_DIR)/$(TOOL_FAMILY)/bin/$(EXE)


# 3rd party code minimal warning level
#
CC_WARNINGS = $(CC_WARNINGS_3PP)
