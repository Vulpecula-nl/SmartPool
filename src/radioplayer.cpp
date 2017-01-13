#include "radioplayer.h"
#include <QProcess>

radioPlayer::radioPlayer(QObject *parent) : QObject(parent)
{

}

void radioPlayer::playStream(int streamNum)
{
    QStringList arguments;
    arguments << "play" << QString::number(streamNum);

    QProcess *mpcProcess = new QProcess();
    mpcProcess->start("mpc", arguments);
}
