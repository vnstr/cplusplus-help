:: Qt-6.5.0

:: Enable:
::  Qt Multimedia
::  Qt PDF
::  Qt Quick Widgets
::  Qt Quick Effects
::  Qt Quick Particles
::  Qt Shader Tools
::  Qt SQL
::  Qt SVG
::  Qt UI Tools
::  Qt WebChannel
::  Qt WebView
::  Qt Lottie Animation
::  Qt Quick Timeline
:: Others are disabled 

:: Also can be useful
::
:: -static-runtime
::
:: Dir for installing sets by --prefix <path>
::

configure -prefix <path_to_install_dir>^
 -static^
 -debug-and-release^
 -skip qtactive^
 -skip qt3d^
 -skip qtbluetooth^
 -skip qtconcurrent^
 -skip qtimageformats^
 -skip qtnfc^
 -skip qtopcua^
 -skip qtopengl^
 -skip qtpositioning^
 -skip qtprintsupport^
 -skip qtremoteobjects^
 -skip qtscxml^
 -skip qtsensors^
 -skip qtserialbus^
 -skip qtserialport^
 -skip qtspatialaudio^
 -skip qtstatemachine^
 -skip qttexttospeech^
 -skip qtqtwebengine^
 -skip qtwebsockets^
 -skip qtxml^
 -skip qtcharts^
 -skip qtcoap^
 -skip qtdatavisualization^
 -skip qtmqtt^
 -skip qtnetworkauthorization^
 -skip qtquick3d^
 -skip qtquick3dphysics^
 -skip qtvirtualkeyboard^
 -skip qtwaylandcompositor^
 -skip qthttpserver^
 -skip qtprotobuf^
 -skip qtgrpc^
 -skip qtlocation^
 -nomake examples^
 -nomake tests

