TARGET := iphone:clang:latest:15.0
INSTALL_TARGET_PROCESSES = SpringBoard
THEOS_PACKAGE_SCHEME=rootless
export SYSROOT = $(THEOS)/sdks/iPhoneOS14.5.sdk
export ARCHS = arm64 arm64e

include $(THEOS)/makefiles/common.mk

TWEAK_NAME = musicBGblur
$(BUNDLE_NAME)_FRAMEWORKS = UIKit

musicBGblur_FILES = Tweak.x
musicBGblur_CFLAGS = -fobjc-arc

include $(THEOS_MAKE_PATH)/tweak.mk
SUBPROJECTS += musicbgblurpref
include $(THEOS_MAKE_PATH)/aggregate.mk
