import QtQuick

// Window是type, Windwo{}是element
Window {
    width: 500
    height: 300
    visible: true
    title: qsTr("Hello World")

    Image { //topmost的先绘制
        anchors.fill: parent //用当前元素填充parent Window，:是绑定不是赋值
        id: background //id是不能修改的
        source: "../images/background.png" //类型是url

        Image {
            anchors.bottom: parent.bottom
            anchors.horizontalCenter: parent.horizontalCenter
            id: pole
            source: "../images/pole.png"
        }

        Image {
            anchors.centerIn: parent //放到parent的中间
//            anchors.verticalCenter: parent.verticalCenter
//            anchors.horizontalCenter: parent.horizontalCenter
            id: wheel
            source: "../images/pinwheel.png"
//            MouseArea {
//                anchors.fill: parent
//                onClicked: wheel.rotation += 90
//            }
            Behavior on rotation { //为特定的属性修改行为提供动画
                NumberAnimation {
                    duration: 1000 //1000ms
                }
            }
        }

        MouseArea {
            anchors.fill: parent
            onClicked: wheel.rotation += 360
        }
    }
}
