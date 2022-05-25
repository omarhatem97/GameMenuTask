import QtQuick 2.15

Item {
    id: root
    property alias buttonText: label.text
    height: label.implicitHeight + 15

    Rectangle {
        id: rect
        anchors.left: parent.left
        width: 10
        height: parent.height
        color: "red"
    }

    Text {
        id: label
        anchors.left: rect.right
        anchors.leftMargin: 8
        anchors.verticalCenter: rect.verticalCenter
        font.pointSize: 16
    }

    MouseArea {
        anchors.fill: parent
        hoverEnabled: true
        onPressed : root.state = "Clicked"
        onReleased: root.state = "Hovered"
        onEntered : root.state = "Hovered"
        onExited  : root.state = "Default"
    }

    states: [
        State {
            name: "Default"
            PropertyChanges {target: rect; width: 10; color: "red"}
        },
        State {
            name: "Hovered"
            PropertyChanges {target: rect; width: 25; color: "red"}
        },
        State {
            name: "Clicked"
            PropertyChanges { target: rect; width: 30; color: "green"}
        }
    ]
    transitions: [
        Transition {
            NumberAnimation {target: rect; properties: "width"; duration: 200}
        }
    ]
}
