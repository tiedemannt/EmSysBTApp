import VPlayApps 1.0
import QtQuick 2.0
import io.qt.cppinterface.qmlbackend 1.0


App {
    Navigation
    {
        //----------------------------------------------------------------------------------
        // Data View Page
        //----------------------------------------------------------------------------------
        NavigationItem
        {
            id: dataviewpage
            title: "Data View"
            icon: IconType.eye

            NavigationStack
            {
                id: navigationStackdataviewpage

                DataViewPage{
                    id:dataviewPage
                }

            }
        }


        //----------------------------------------------------------------------------------
        // Connection Page
        //----------------------------------------------------------------------------------
        NavigationItem
        {
            id: settings
            title: "Connection"
            icon: IconType.circleonotch

            NavigationStack
            {
                id: navigationStacksettings

                SettingsPage{
                    id:settingsPage
                }
            }
        }
    }
}

/*##^## Designer {
    D{i:0;autoSize:true;height:480;width:640}
}
 ##^##*/
