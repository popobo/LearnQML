import QtQuick

Window {
    width: 640
    height: 480
    visible: true
    title: qsTr("component")

    Button {
        text:"开始"
        onClicked: {
            text1.text = "aaaaaa"
        }
    }

    Text { // text changes when button was clicked
        id: text1
        x: 12;
        y: 76
        width: 116;
        height: 26
        text: "waiting ..."
        horizontalAlignment: Text.AlignHCenter
    }
}
