#!/bin/bash

# Qt-6.5.0

# Enable:
#  Qt Multimedia
#  Qt PDF
#  Qt Quick Widgets
#  Qt Quick Effects
#  Qt Quick Particles
#  Qt Shader Tools
#  Qt SQL
#  Qt SVG
#  Qt UI Tools
#  Qt WebChannel
#  Qt WebView
#  Qt Lottie Animation
#  Qt Quick Timeline
# Others are disabled 

# Also can be useful
#
# -static-runtime
#
# Cross-build for mac-x86 by mac-arm:
# -device-option QMAKE_APPLE_DEVICE_ARCHS=x86_64

./configure -prefix /Users/ivanvostrilov/Libs/qt-6/build-qt-6.5.0 \
  -static \
  -debug-and-release \
  -skip active \
  -skip 3d \
  -skip bluetooth \
  -skip concurrent \
  -skip imageformats \
  -skip nfc \
  -skip opcua \
  -skip opengl \
  -skip positioning \
  -skip printsupport \
  -skip remoteobjects \
  -skip scxml \
  -skip sensors \
  -skip serialbus \
  -skip serialport \
  -skip spatialaudio \
  -skip statemachine \
  -skip texttospeech \
  -skip qtwebengine \
  -skip websockets \
  -skip xml \
  -skip charts \
  -skip coap \
  -skip datavisualization \
  -skip mqtt \
  -skip networkauthorization \
  -skip quick3d \
  -skip quick3dphysics \
  -skip virtualkeyboard \
  -skip waylandcompositor \
  -skip httpserver \
  -skip protobuf \
  -skip grpc \
  -skip location \
  -nomake examples \
  -nomake tests

