import QtQuick

Window {
    width: 640
    height: 480
    visible: true
    title: qsTr("component")

    Button {}

    Text { // text changes when button was clicked
        id: status
        x: 12;
        y: 76
        width: 116;
        height: 26
        text: "waiting ..."
        horizontalAlignment: Text.AlignHCenter
    }

}
