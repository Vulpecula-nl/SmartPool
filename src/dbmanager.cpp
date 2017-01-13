#include "dbmanager.h"
#include <QSqlQuery>
#include <QSqlError>
#include <QSqlRecord>
#include <QDebug>
#include <QJsonDocument>
#include <QJsonArray>
#include <QJsonObject>

DbManager::DbManager(QObject *parent) : QObject(parent)
{
   static const QString path = "/usr/local/bin/SensorLogger/PoolData.db";
   m_db = QSqlDatabase::addDatabase("QSQLITE");
   m_db.setDatabaseName(path);

   if (!m_db.open())
   {
      qDebug() << "Error: connection with database fail";
   }
   else
   {
      qDebug() << "Database: connection ok";
   }
}

QByteArray DbManager::printAllSensorValues()
{
    QJsonDocument  json;
    QJsonArray     recordsArray;
    QJsonObject    recordObject;

    QSqlQuery query("SELECT * FROM SensorValues WHERE timestamp BETWEEN '2016-10-23' AND '2016-10-24'");

    while (query.next())
    {
        for(int x=0; x < query.record().count(); x++) {
            recordObject.insert( query.record().fieldName(x),
                   QJsonValue::fromVariant(query.value(x)) );
         }
         recordsArray.push_back(recordObject);
    }
    json.setArray(recordsArray);

    return json.toJson();
}

