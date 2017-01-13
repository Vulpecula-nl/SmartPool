#include "sensordata.h"
#include <wiringPi.h>
#include <maxdetect.h>
#include <QDebug>

SensorData::SensorData(QObject *parent) : QObject(parent)
{
    wiringPiSetup();
    qDebug() << "test ";
}

void SensorData::updateCurrentValues()
{
    #define RHT03_PIN       7
    readRHT03(RHT03_PIN, &tempValue, &humiValue);
}

QString SensorData::getCurrentTemperature() const {

    return QString("%L1").arg(tempValue / 10.0);
}

QString SensorData::getCurrentHumidity() const {
    return QString("%L1").arg(humiValue / 10.0);
}
