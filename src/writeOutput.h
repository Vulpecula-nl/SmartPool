#ifndef LIGHTING_H
#define LIGHTING_H

#include <QObject>

class writeOutput : public QObject
{
    Q_OBJECT
public:
    explicit writeOutput(int *i2cAddress = 0, int _pinbase = 0, QObject *parent = 0);
    Q_INVOKABLE int pinbase = 64;
    Q_INVOKABLE void write(int port, bool state);
signals:

public slots:
};

#endif // LIGHTING_H
