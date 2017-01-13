import QtQuick 2.5
import QtQuick.Controls 1.4
import QtQuick.Controls.Styles 1.4

Item {

    Text {
        text: "PLAYLIST"
        color: "white"
        font.family: localFont.name;
        font.pointSize: 25;
        y: 50
    }

    Rectangle {
        width: 330; height: 425
        x:20
        y:110
        color: "#464d4c"

        Component {
            id: playlistDelegate
            Item {
                width: 330; height: 70
                Column {
                    width: 320
                    Text { text: songName
                            color: "white"
                            font.family: localFont.name;
                            font.pointSize: 25;
                            lineHeight: 0.7
                            }
                    Text { text: artistName
                            color: "white"
                            font.family: localFont.name;
                            font.pointSize: 15;
                            }

                }
                Text { text: duration
                       color: "white"
                       font.family: localFont.name;
                       font.pointSize: 15;
                       anchors.verticalCenter: parent.verticalCenter
                       x: 300

                }
            }
        }
        ListView {
            id: playlist
            anchors.fill: parent
            snapMode: ListView.SnapToItem
            displayMarginBeginning: -45
            //highlight: Rectangle { color: "#00eac1"}
            model: ListModel {
                ListElement { artistName: "Jethro Tull"; songName: "Locomotive Breath"; fileName: "Jethro Tull - Locomotive Breath.mp3"; duration: "5:24"}
                ListElement { artistName: "Tool"; songName: "Sober"; fileName: "Tool - Sober.mp3"; duration: "9:15" }
                ListElement { artistName: "Air"; songName: "All I Need"; fileName: "03 - Air - All I Need.mp3"; duration: "3:36" }
                ListElement { artistName: "Metallica"; songName: "Enter Sandman"; fileName: "03 - Air - All I Need.mp3"; duration: "7:02" }
                ListElement { artistName: "Metallica"; songName: "One"; fileName: "03 - Air - All I Need.mp3"; duration: "9:51" }
                ListElement { artistName: "Metallica"; songName: "Battery"; fileName: "03 - Air - All I Need.mp3"; duration: "6:48" }
                ListElement { artistName: "Metallica"; songName: "Sad But True"; fileName: "03 - Air - All I Need.mp3"; duration: "4:12" }
            }
            delegate: playlistDelegate
        }
    }
    Text {
        x: 375
        y: 50
        text: "NOW PLAYING"
        font.family: localFont.name;
        font.pointSize: 25;
        color: "white"
    }

    Rectangle {
        width:300; height:300
        x: 375; y: 125
        border.color: "white"
        Text {
            text: "Artwork here"
            anchors.centerIn: parent
        }
    }
    Column {
        x: 375; y: 450
        Text {

            text: "Jethro Tull"
            color: "white"
            font.family: localFont.name;
            font.pointSize: 25;
            lineHeight: 0.7
            }
        Text {
            text: "Locomotive Breath"
            color: "white"
            font.family: localFont.name;
            font.pointSize: 15;
        }
    }
    ProgressBar {
        x: 375; y: 525
        value: 0.5
        style: ProgressBarStyle {
            background: Rectangle {
                        color: "#5f6161"
                        implicitWidth: 500
                        implicitHeight: 8
                    }
                    progress: Rectangle {
                        color: "#00eac1"
                    }
        }
    }
    Text {
        x:375; y:535
        text: "2:42"
        color: "white"
        font.family: localFont.name;
        font.pointSize: 10;
    }
    Text {
        x:850; y:535
        text: "5:24"
        horizontalAlignment: Text.alignRight
        color: "white"
        font.family: localFont.name;
        font.pointSize: 10;
    }
}

