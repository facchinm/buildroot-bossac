################################################################################
#
# avrdude
#
################################################################################
BOSSAC_VERSION = 2920b32899c5db4473b62db9fa2b14a9c224e4b4
BOSSAC_SITE = $(call github,shumatech,BOSSA,$(BOSSAC_VERSION))
BOSSAC_LICENSE = GPLv2+
BOSSAC_LICENSE_FILES = LICENSE 
# Sources coming from git, without generated configure and Makefile.in
# files.

define BOSSAC_BUILD_CMDS
        $(MAKE) CC="$(TARGET_CC)" LD="$(TARGET_LD)" -C $(@D) strip-bossac
endef

define BOSSAC_INSTALL_TARGET_CMDS
        $(INSTALL) $(@D)/bin/bossac $(TARGET_DIR)/usr/bin
endef

$(eval $(generic-package))
