#include "writeOutput.h"
#include <wiringPi.h>
#include <mcp23017.h>
#include <QDebug>

//const int pinbase = 64;

writeOutput::writeOutput(int *i2cAddress, int _pinbase, QObject *parent) : QObject(parent)
{
    pinbase = _pinbase;
    mcp23017Setup(pinbase + 1, *i2cAddress);
    for(int i = 1;i <= 8; i++)
    {
        pinMode (pinbase + i, OUTPUT) ;
    }
}

void writeOutput::write(int port, bool state)
{
    if (state == true)
        digitalWrite(pinbase + port, 1);
    else
        digitalWrite(pinbase + port, 0);
    qDebug() << "Lighting port: " << port << " State: " << state;
}
