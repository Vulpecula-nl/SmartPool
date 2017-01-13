#include <QApplication>
#include <QQmlApplicationEngine>
#include <QQmlContext>
#include <src/sensordata.h>
#include <src/writeOutput.h>
#include <src/dbmanager.h>
#include <QProcess>
#include <src/radioplayer.h>

int main(int argc, char *argv[])
{
    int             i2cAddressLighting = 0x20;
    int             i2cAddressAppliances = 0x21;
    QApplication    app(argc, argv);
    SensorData      sensorData;
    writeOutput     lighting(&i2cAddressLighting, 64);
    writeOutput     appliances(&i2cAddressAppliances, 80);
    radioPlayer     radioPlay;
    DbManager       dbmanager;

    QQmlApplicationEngine engine;
    engine.rootContext()->setContextProperty("sensorData",&sensorData);
    engine.rootContext()->setContextProperty("lighting",&lighting);
    engine.rootContext()->setContextProperty("appliances",&appliances);
    engine.rootContext()->setContextProperty("dbmanager",&dbmanager);
    engine.rootContext()->setContextProperty("radioPlayer",&radioPlay);
    engine.load(QUrl(QStringLiteral("qrc:/main.qml")));

    return app.exec();
}

