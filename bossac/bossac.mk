################################################################################
#
# bossac
#
################################################################################
BOSSAC_VERSION = 2920b32899c5db4473b62db9fa2b14a9c224e4b4
BOSSAC_SITE = $(call github,shumatech,BOSSA,$(BOSSAC_VERSION))
BOSSAC_LICENSE = GPLv2+
BOSSAC_LICENSE_FILES = LICENSE 

define BOSSAC_BUILD_CMDS
        $(MAKE) ARCH=$(ARCH) CROSS_COMPILE="$(TARGET_CROSS)" -C $(@D) strip-bossac
endef

define BOSSAC_INSTALL_TARGET_CMDS
        $(INSTALL) $(@D)/bin/bossac $(TARGET_DIR)/usr/bin
endef

$(eval $(generic-package))
