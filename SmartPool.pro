TEMPLATE = app

QT += qml quick sql charts
CONFIG += c++11

SOURCES += main.cpp

RESOURCES += qml.qrc

LIBS += -L/usr/local/include -lwiringPi -lwiringPiDev

# Additional import path used to resolve QML modules in Qt Creator's code model
QML_IMPORT_PATH =

# Default rules for deployment.
include(deployment.pri)

