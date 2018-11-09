import VPlayApps 1.0
import QtQuick 2.0
import io.qt.cppinterface.qmlbackend 1.0

App {

    Navigation
    {
        id: navigation

        NavigationItem
        {
            id: settingsNItem
            title: "Einstellungen"
            icon: IconType.adjust


            NavigationStack {
              Page {
                title: "BT LE Interface"
                backgroundColor: Theme.colors.secondaryBackgroundColor

                //Items on Page here:
                AppText {
                  text: "Init BT Connection here"
                  anchors.centerIn: parent
                }
                }
            }
        }

        NavigationItem
        {
            id: homeNItem
            title: "Daten"
            icon: IconType.home

            NavigationStack {
              Page {
                title: "BT LE Interface"
                backgroundColor: Theme.colors.secondaryBackgroundColor

                //Items on Page here:
                AppText {
                  text: "Data View here"
                  anchors.centerIn: parent
                }
                }
            }
        }


    }
}
