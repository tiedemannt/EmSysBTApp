import VPlayApps 1.0
import QtQuick 2.0
import io.qt.cppinterface.qmlbackend 1.0

App {
    Navigation
    {
        NavigationItem
        {
            id: dataviewpage
            title: "Data View"
            icon: IconType.eye

            NavigationStack
            {
                id: navigationStackdataviewpage
                Page
                {
                    id: mainPage
                    title: "Data View"
                    backgroundColor: Theme.colors.secondaryBackgroundColor

                }
            }
        }

        NavigationItem
        {
            id: settings
            title: "Connection"
            icon: IconType.circleonotch

            NavigationStack
            {
                id: navigationStacksettings
                Page
                {
                    id: settingspage
                    title: "Connect Device"
                    backgroundColor: Theme.colors.secondaryBackgroundColor
                }
            }
        }
    }
}
