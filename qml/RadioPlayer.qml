import QtQuick 2.5
import QtQuick.Controls 1.4
import QtQuick.Controls.Styles 1.4

Item {

    Text {
        text: "STATIONS"
        color: "white"
        font.family: localFont.name;
        font.pointSize: 25;
        y: 50
    }

    Rectangle {
        width: 330; height: 425
        x:40
        y:110
        color: "#464d4c"

        Component {
            id: playlistDelegate
            Item {
                width: 330; height: 130
                MouseArea {
                    width: 160
                    height: 120
                    Image {
                        source: radioLogo
                    }
                    onClicked: {
                        radioPlayer.playStream(radioNum);
                        nowPlayingArtist.text = radioName;
                        nowPlayingTitle.text = "";
                        playingArtwork.source = radioLogo;
                        textplaying.text = radioName;

                    }
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
                id: radioModel
                ListElement { radioName: "NPO Radio 1"; radioLogo: "content/NPO_Radio_1.png"; radioNum: 1}
                ListElement { radioName: "NPO Radio 2"; radioLogo: "content/NPO_Radio_2.png"; radioNum: 2}
                ListElement { radioName: "NPO 3FM"; radioLogo: "content/NPO_3FM.png"; radioNum: 3}
                ListElement { radioName: "Arrow Classic Rock"; radioLogo: "content/Arrow_Classic_Rock.png"; radioNum: 4}
                ListElement { radioName: "Skyradio"; radioLogo: "content/Skyradio.png"; radioNum: 5}
                ListElement { radioName: "Radio 538"; radioLogo: "content/Radio_538.png"; radioNum: 6}
                ListElement { radioName: "Q-Music"; radioLogo: "content/Qmusic_NL.png"; radioNum: 7}

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
        Image {
            id: playingArtwork
            anchors.centerIn: parent
        }
    }
    Column {
        x: 375; y: 450
        Text {
            id: nowPlayingArtist
            text: "Jethro Tull"
            color: "white"
            font.family: localFont.name;
            font.pointSize: 25;
            lineHeight: 0.7
            }
        Text {
            id: nowPlayingTitle
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

