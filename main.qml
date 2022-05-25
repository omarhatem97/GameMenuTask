import QtQuick 2.15
import QtQuick.Window 2.15

import "./components"

Window {
    width: 640
    height: 480
    visible: true
    title: qsTr("Hello World")

    Column {
        anchors.bottom: parent.bottom
        anchors.left: parent.left
        anchors.bottomMargin: 32
        anchors.leftMargin: 16
        width: 120
        MenuButton {
            buttonText: "Play"
            width: parent.width
        }
        MenuButton {
            buttonText: "Settings"
            width : parent.width
        }
        MenuButton {
            buttonText: "Quit"
            width : parent.width
        }
    }

}
