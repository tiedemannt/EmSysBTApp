#ifndef C_QMLBACKEND_H
#define C_QMLBACKEND_H

#include "c_bluetoothhandler.h"

#include <QObject>

class c_QmlBackEnd : public QObject
{
    Q_OBJECT

    //QML Properties:
    //Q_PROPERTY(datatype string, READ method WRITE method NOTIFY signal)

public:
    explicit c_QmlBackEnd(QObject *parent = nullptr);

signals:

public slots:

private:
    c_bluetoothHandler* m_bluetoothHandler;
};

#endif // C_QMLBACKEND_H
