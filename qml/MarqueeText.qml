import QtQuick 2.0

Item {
    id:marqueeText
    height: scrollingText.height
    clip: true
    property int tempX: 0
    property alias text: scrollingText.text
    Text {
        x: tempX
        id:scrollingText
        color: "white"
    }

    MouseArea {
        id:mouseArea
        anchors.fill: parent
        onClicked: {
            tempX = 0;
            timer.running = true;
        }
    }

    Timer {
        id:timer
        interval: 200; running: false; repeat: true
        onTriggered:{
            tempX = tempX + 5
            scrollingText.x = -tempX;

            if( tempX + marqueeText.width > scrollingText.width ) {
                timer.running = false
                pauseTimer.running = true
            }
        }
    }

    Timer {
        id:pauseTimer
        interval: 500; running: false; repeat: false
        onTriggered: {
            scrollingText.x = 0
        }
    }
}
