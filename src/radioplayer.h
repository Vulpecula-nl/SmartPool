#ifndef RADIOPLAYER_H
#define RADIOPLAYER_H

#include <QObject>

class radioPlayer : public QObject
{
    Q_OBJECT
public:
    explicit radioPlayer(QObject *parent = 0);
    Q_INVOKABLE void playStream(int streamNum);
signals:

public slots:
};

#endif // RADIOPLAYER_H
