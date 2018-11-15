#ifndef C_BLUETOOTHHANDLER_H
#define C_BLUETOOTHHANDLER_H

#include <QObject>
#include <QtBluetooth>
#include <QList>
#include <QQmlApplicationEngine>

class c_bluetoothHandler : public QObject
{
    Q_OBJECT

    /* ###########################
     *  PUBLIC CLASS OBJECTS
     * ###########################
     */
public:
    explicit c_bluetoothHandler(QObject *parent = nullptr);


    /* ###########################
     *  CLASS SIGNALS
     * ###########################
     */
signals:
    void addDeviceToQML(QString name, QString adress);

    /* ###########################
     *  PUBLIC CLASS SLOTS
     * ###########################
     */
public slots:
    void addDevice(QVariant name, QVariant adress);


    /* ###########################
     *  PRIVATE CLASS OBJECTS
     * ###########################
     */
private:
    QBluetoothDeviceDiscoveryAgent*     m_deviceDiscoveryAgent;     //Discovery Agent
    QList<QBluetoothDeviceInfo>         m_discoveredDevices;        //Liste gefundene Devices
    QObject*                            m_parent;                   //Das Parent

};

#endif // C_BLUETOOTHHANDLER_H
