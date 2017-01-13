#ifndef DBMANAGER_H
#define DBMANAGER_H

#include <QObject>
#include <QSqlDatabase>

class DbManager : public QObject
{
    Q_OBJECT
private:
    Q_INVOKABLE QSqlDatabase m_db;
public:
    explicit DbManager(QObject *parent = 0);
    Q_INVOKABLE QByteArray printAllSensorValues();

signals:

public slots:
};

#endif // DBMANAGER_H
