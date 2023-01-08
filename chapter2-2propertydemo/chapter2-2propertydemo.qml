import QtQuick

Rectangle {
    id: root
    width: 300
    height: 300

    Text {
        // (1) identifier
        id: thisLabel

        // (2) set x- and y-position
        x: 24; y: 16

        // (3) bind height to 2 * width
        height: 2 * width

        Rectangle {
            anchors.fill: parent
            color: "yellow"
            z: parent.z - 1
        }

        // (4) custom property
        property int times: 24

        // (5) property alias
        property alias anotherTimes: thisLabel.times

        // (6) set text appended by value
        text: "thisLable " + anotherTimes

        // (7) font is a grouped property
        font.family: "Ubuntu"
        font.pixelSize: 24

        // (8) KeyNavigation is an attached property
        KeyNavigation.tab: thatLabel

        // (9) signal handler for property changes
        onHeightChanged: console.log('height:', height)

        // focus is need to receive key events
        focus: false

        // change color based on focus value
        color: focus ? "red" : "black"
    }

    Text {
        id: thatLabel
        text: "thatLable"
        focus: !thisLabel.focus
        KeyNavigation.tab: thisLabel
        color: focus ? "red" : "black"
    }
}


