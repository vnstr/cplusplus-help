#!/bin/bash

# Qt-5.15.8 has been tested:
# apple m1 pro native and x86 builds

# Reference: https://doc.qt.io/qt-5/qtmodules.html
# Enable:
#  Qt Widgets
#
# P.s.
# Cross-build for mac-x86 by mac-arm:
# -device-option QMAKE_APPLE_DEVICE_ARCHS=x86_64

./configure -prefix <path_to_install> \
 -static \
 -debug-and-release \
 -opensource \
 -confirm-license \
 -no-opengl \
 -skip qtmultimedia \
 -skip qtactiveqt \
 -skip qt3d \
 -skip qtandroidextras \
 -skip qtgamepad \
 -skip qtgraphicaleffects \
 -skip qtimageformats \
 -skip qtlocation \
 -skip qtmacextras \
 -skip qtpurchasing \
 -skip qtquickcontrols \
 -skip qtquickcontrols2 \
 -skip qtquicktimeline \
 -skip qtremoteobjects \
 -skip qtscript \
 -skip qtscxml \
 -skip qtsensors \
 -skip qtserialbus \
 -skip qtserialport \
 -skip qtspeech \
 -skip qtsvg \
 -skip qtwebchannel \
 -skip qtwebengine \
 -skip qtwebsockets \
 -skip qtwebview \
 -skip qtx11extras \
 -skip qtxmlpatterns \
 -skip qtcharts \
 -skip qtlottie \
 -skip qtnetworkauth \
 -skip qtvirtualkeyboard \
 -skip qtwayland \
 -skip qtwebglplugin \
 -skip qtquick3d \
 \
 -skip qtconnectivity \
 -skip qtdatavis3d \
 -skip qtdeclarative \
 -skip qtdoc \
 -skip qtmultimedia \
 -skip qtpdf \
 \
 -nomake examples \
 -nomake tests

