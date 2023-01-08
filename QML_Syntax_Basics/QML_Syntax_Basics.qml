import QtQuick

//Rectangle {
//    width: 100
//    height: 100
//    color: "red"
//}

//Rectangle { width: 100; height: 100; color: "red" }

//Rectangle {
//    width: 100
//    height: 100

//    gradient: Gradient {
//        GradientStop { position: 0.0; color: "yellow" }
//        GradientStop { position: 0.5; color: "blue" }
//    }
//}

Rectangle {
    width: 200
    height: 200

    Text {
        anchors.centerIn: parent
        text: "Hello, QML!"
    }
}

// 当 Text 对象在上面的代码中引用它的父值时，它引用的是它的可视父值，而不是对象树中的父值。
