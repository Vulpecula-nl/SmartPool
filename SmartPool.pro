TEMPLATE = app

QT += qml quick sql charts
CONFIG += c++11

SOURCES += main.cpp \
    src/dbmanager.cpp \
    src/radioplayer.cpp \
    src/sensordata.cpp \
    src/writeOutput.cpp

RESOURCES += qml.qrc

LIBS += -L/usr/local/include -lwiringPi -lwiringPiDev

# Additional import path used to resolve QML modules in Qt Creator's code model
QML_IMPORT_PATH =

# Default rules for deployment.
include(deployment.pri)

DISTFILES += \
    fonts/segoe-ui-light.ttf \
    content/Appliances_w.png \
    content/Appliances.png \
    content/Arrow_Classic_Rock.png \
    content/arrow.png \
    content/background.png \
    content/center.png \
    content/Climate_w.png \
    content/Climate.png \
    content/clock-night.png \
    content/clock.png \
    content/Dashboard_w.png \
    content/Dashboard.png \
    content/hour.png \
    content/Lighting_w.png \
    content/Lighting.png \
    content/minute.png \
    content/NPO_3FM.png \
    content/NPO_Radio_1.png \
    content/NPO_Radio_2.png \
    content/Qmusic_NL.png \
    content/quit.png \
    content/Radio_538.png \
    content/second.png \
    content/Settings_w.png \
    content/Settings.png \
    content/Skyradio.png \
    content/Weather_w.png \
    content/Weather.png \
    qml/appliances.qml \
    qml/Button.qml \
    qml/climate.qml \
    qml/Clock.qml \
    qml/Clocks.qml \
    qml/dashboard.qml \
    qml/DefaultSwitch.qml \
    qml/lighting.qml \
    qml/MarqueeText.qml \
    qml/MouseAreaInertia.qml \
    qml/MusicPlayer.qml \
    qml/RadioPlayer.qml \
    qml/RadioStationButton.qml

HEADERS += \
    src/dbmanager.h \
    src/radioplayer.h \
    src/sensordata.h \
    src/writeOutput.h

