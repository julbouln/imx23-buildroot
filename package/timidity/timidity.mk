#############################################################
#
# Timidity
#
#############################################################

TIMIDITY_VERSION = 2.14.0
TIMIDITY_SITE = http://downloads.sourceforge.net/project/timidity/TiMidity%2B%2B/TiMidity%2B%2B-$(TIMIDITY_VERSION)
TIMIDITY_SOURCE = TiMidity%2B%2B-$(TIMIDITY_VERSION).tar.gz
TIMIDITY_LICENSE = LGPLv2+
TIMIDITY_LICENSE_FILES = COPYING
TIMIDITY_INSTALL_STAGING = YES

TIMIDITY_DEPENDENCIES = alsa-lib portaudio
TIMIDITY_CONF_OPTS += --enable-portaudio --enable-audio=portaudio --with-default-output=portaudio --enable-alsaseq --enable-dynamic

$(eval $(autotools-package))
