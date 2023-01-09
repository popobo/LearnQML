import QtQuick

//DarkSquare {
//    id:root
//    width:120;height:240

//    Column {
//        id:column
//        anchors.centerIn:parent
//        spacing: 10
//        RedSquare{}
//        GreenSquare{width:96}
//        BlueSquare{}
//    }

//}

//BrightSquare {
//    id:root
//    width:400;height:240

//    Row {
//        id:row
//        anchors.centerIn:parent
//        spacing: 10
//        RedSquare{}
//        GreenSquare{width:96}
//        BlueSquare{}
//    }
//}


//BrightSquare {
//    id:root
//    width:400;height:240

//    Grid {
//        id:grid
//        anchors.centerIn:parent
//        spacing: 10
//        rows:2
//        columns:3

//        RedSquare{}
//        GreenSquare{}
//        BlueSquare{}

//        RedSquare{}
//        GreenSquare{}
//        BlueSquare{}
//    }
//}


//BrightSquare {
//    id:root
//    width:400;height:240

//    Flow {
//        id:flow
//        anchors.fill:parent
//        anchors.margins: 20
//        spacing: 20

//        RedSquare{}
//        GreenSquare{}
//        BlueSquare{}

//        RedSquare{}
//        GreenSquare{}
//        BlueSquare{}
//    }
//}

BrightSquare {
    id:root
    width:252;height:252
    property var colorArray: ["#00bde3", "#67c111", "#ea7025"]
    Grid { //columns默认值为4
        anchors.centerIn: parent
        anchors.margins: 8
        spacing: 4


        Repeater {
            model:16
            Rectangle{
                id:rect1
                property int colorIndex: Math.floor(Math.random()*3);
                color:root.colorArray[colorIndex]
                width:56
                height:56

                Text {
                    anchors.centerIn: parent
                    text:"Cell"+rect1.Positioner.index
                }
            }
        }
    }
}

