TARGET := iphone:clang:latest:7.0

include $(THEOS)/makefiles/common.mk

BUNDLE_NAME = musicbgblurpref

musicbgblurpref_FILES = bgbRootListController.m
musicbgblurpref_FRAMEWORKS = UIKit
musicbgblurpref_PRIVATE_FRAMEWORKS = Preferences
musicbgblurpref_INSTALL_PATH = /Library/PreferenceBundles
musicbgblurpref_CFLAGS = -fobjc-arc

include $(THEOS_MAKE_PATH)/bundle.mk
