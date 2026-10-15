TWEAK_NAME = Powercuff
Powercuff_FILES = Powercuff.x
Powercuff_FRAMEWORKS = Foundation
Powercuff_CFLAGS = -std=c99 -Wno-deprecated-declarations

# Rootless (Dopamine / palera1n rootless) package scheme
THEOS_PACKAGE_SCHEME = rootless

# arm64 only — covers A10 (iPhone 7) through A16 on rootless
ARCHS = arm64
TARGET = iphone:clang:latest:15.0

INSTALL_TARGET_PROCESSES = thermalmonitord SpringBoard

include $(THEOS)/makefiles/common.mk
include $(THEOS)/makefiles/tweak.mk
