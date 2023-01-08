import QtQuick

Window {
    width: 640
    height: 480
    visible: true
    title: qsTr("Image")

    Image {
        id: image1
        source:"../images/pinwheel.png"
    }

    Image {
        x:image1.x+image1.width+10
        width: image1.width/2
        source:"../images/pinwheel.png"
    }

    Image {
        y:image1.y+image1.height+10
        width: image1.width/2
        source:"../images/pinwheel.png"
        //fillMode: Image.PreserveAspectCrop
        fillMode: Image.PreserveAspectFit
    }
}
