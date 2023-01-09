import QtQuick

Rectangle {
    width:50;height: 50
    property alias text: label.text
    color: "blue"
    border.color: Qt.lighter(color)

    Text {
        id:label
        text:qsTr("text")
        color:"white"
        anchors.centerIn: parent
    }
}
