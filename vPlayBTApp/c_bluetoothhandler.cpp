#include "c_bluetoothhandler.h"
#include <QDebug>


c_bluetoothHandler::c_bluetoothHandler(QObject *parent) :
    QObject(parent),
    m_parent(parent)
{

}



void c_bluetoothHandler::addDevice(QVariant name, QVariant adress)
{
    qDebug() << "### c_bluetoothHandler::addDevice";

    QQmlApplicationEngine* qmlEngine = dynamic_cast<QQmlApplicationEngine*>(m_parent);


    emit(addDeviceToQML(name.toString(), adress.toString()));

//    QMetaObject::invokeMethod(qmlEngine->globalObject().toQObject(),
//            "addDevice",
//            QGenericReturnArgument(),
//            Q_ARG(QVariant, name),
//            Q_ARG(QVariant, adress));
}
