import QtQuick

Window {
    width: 640
    height: 480
    visible: true
    title: qsTr("Hello World")

    Text {
        id:text1
        text: "The quick brown fox"
        color: "#303030"
        font.family: "Ubuntu"
        font.pixelSize: 28
    }

    Text {
        id:text2
        y:text1.y+text1.height+20

        width: 100
        elide: Text.ElideMiddle

        text: "The quick brown fox !!!!!!!!!!!!!!!!!!!!!"
        color: "#ffffff"
        font.family: "Ubuntu"
        font.pixelSize: 40

        //wrapMode: Text.WordWrap 不包括符号!
        wrapMode: Text.WrapAtWordBoundaryOrAnywhere

        style: Text.Sunken
        styleColor: "#FF4444"
    }

}
