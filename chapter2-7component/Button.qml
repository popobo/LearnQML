import QtQuick

Item {
    id:root
    //开放属性
    property alias text:label.text
    signal clicked

    Rectangle {
        // our inlined button ui
        id: button

        x: 12; y: 12
        width: 116; height: 26
        color: "lightsteelblue"
        border.color: "slategrey"
        Text {
            id:label
            anchors.centerIn: parent
            text: "Start"
        }
        MouseArea {
            anchors.fill: parent
            onClicked: {
                root.clicked()
            }
        }
    }
}

