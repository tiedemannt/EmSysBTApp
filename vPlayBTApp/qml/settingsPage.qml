import VPlayApps 1.0
import QtQuick 2.0
import io.qt.cppinterface.qmlbackend 1.0
import io.qt.cppinterface.bthandler 1.0


Page {

    id: settingspage
    title: "Gefundene Geräte"
    backgroundColor: Theme.colors.secondaryBackgroundColor

    AppActivityIndicator {
        id: appActivityIndicator
        color: "#aaaaaa"
        z: 1
        animating: false
        anchors.right: parent.right
        anchors.rightMargin: 10
        anchors.bottom: parent.bottom
        anchors.bottomMargin: 10
        animationDuration: 2000
    }

    AppListView {
        id: listview
        anchors.rightMargin: 10
        anchors.leftMargin: 10
        anchors.bottomMargin: 10
        anchors.topMargin: 10
        anchors.fill: parent

        delegate: SimpleRow{}
        model: listData
    }
    property var listData: []

    AppButton {
        id: cleanList
        height: appActivityIndicator.height
        text: "Neu laden"
        anchors.bottom: parent.bottom
        anchors.bottomMargin: 10
        anchors.left: parent.left
        anchors.leftMargin: 10
        onClicked: {
            bluetoothHandler.addDevice("Ass", "smells like shit")
            appActivityIndicator.animating = true
        }
    }

    Connections
    {
        target: bluetoothHandler
        onAddDeviceToQML:{
            listData.push({text: name, detailText: adress, icon: IconType.caretright})
            listDataChanged()
        }
    }
}

/*##^## Designer {
    D{i:0;autoSize:true;height:480;width:640}D{i:15;anchors_width:620}D{i:27;anchors_width:154}
}
 ##^##*/
