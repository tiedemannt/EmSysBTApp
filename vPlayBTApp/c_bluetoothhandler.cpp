#include "c_bluetoothhandler.h"
#include <QDebug>


c_bluetoothHandler::c_bluetoothHandler(QObject *parent) :
    QObject(parent)
{

}



void c_bluetoothHandler::addDevice(QVariant name, QVariant adress)
{
    qDebug() << "### c_bluetoothHandler::addDevice";

    emit(addDeviceToQML(name.toString(), adress.toString()));
}
