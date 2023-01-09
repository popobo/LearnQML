import QtQuick

Window {
    width: 640
    height: 480
    visible: true
    title: qsTr("Hello World")

    //必须放在此处，否则会覆盖其他MouseArea
    MouseArea {
        anchors.fill: parent
        onClicked: {
            qq1.x = 50
            qq2.rotation = 0
            qq3.rotation = 0
            qq3.scale = 1.0
        }
    }

    ClickableImage {
        id:qq1
        x:50;y:68
        source:"../images/qq.png"

        onClicked: {
            x+=10;
        }
    }

    ClickableImage {
        id:qq2
        x:150;y:68
        source:"../images/qq.png"

        onClicked: {
            rotation+=10
        }
    }

    ClickableImage {
        id:qq3
        x:250;y:68
        source:"../images/qq.png"

        onClicked: {
            rotation+=10
            scale+=0.1
        }
    }
}
