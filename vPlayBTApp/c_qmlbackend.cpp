#include "c_qmlbackend.h"
#include <QQmlContext>

c_QmlBackEnd::c_QmlBackEnd(QObject *parent) :
    QObject(parent)
{
    //Bluetoothhandler erzeugen
    m_bluetoothHandler = new c_bluetoothHandler(parent);

    //Contextproperties für QML anlegen
    dynamic_cast<QQmlApplicationEngine*>(parent)->rootContext()->setContextProperty(
                "bluetoothHandler", m_bluetoothHandler);
    dynamic_cast<QQmlApplicationEngine*>(parent)->rootContext()->setContextProperty(
                "qmlBackend", this);

}
