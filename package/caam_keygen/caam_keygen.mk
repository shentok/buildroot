################################################################################
#
# caam-keygen
#
################################################################################

CAAM_KEYGEN_VERSION = lf-6.12.3-1.0.0
CAAM_KEYGEN_SOURCE = $(CAAM_KEYGEN_VERSION).tar.gz
CAAM_KEYGEN_SITE = https://github.com/nxp-imx/keyctl_caam/archive/refs/tags
CAAM_KEYGEN_LICENSE = BSD-3-Clause
CAAM_KEYGEN_LICENSE_FILES = LICENSE

CAAM_KEYGEN_DEPENDENCIES = openssl

define CAAM_KEYGEN_BUILD_CMDS
	$(TARGET_MAKE_ENV) $(MAKE) VERBOSE=1 -C $(@D) $(TARGET_CONFIGURE_OPTS) LDFLAGS+="-lcrypto"
endef

define CAAM_KEYGEN_INSTALL_TARGET_CMDS
	$(INSTALL) -m 0755 $(@D)/caam-keygen $(TARGET_DIR)/usr/bin/
endef

$(eval $(generic-package))
