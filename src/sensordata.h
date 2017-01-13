#ifndef SENSORDATA_H
#define SENSORDATA_H

#include <QObject>

class SensorData : public QObject
{
    Q_OBJECT
public:
    explicit SensorData(QObject *parent = 0);
    int tempValue = 0, humiValue = 0;
    Q_INVOKABLE void updateCurrentValues();
    Q_INVOKABLE QString getCurrentTemperature() const;
    Q_INVOKABLE QString getCurrentHumidity() const;
signals:

public slots:
};

#endif // SENSORDATA_H
