import QtQuick 2.3
import QtQuick.Window 2.2
import QtQuick.Controls 1.4
import QtQuick.Controls.Styles 1.4
import "qml"

Window {
    property string textColor: "white"

    visible: true


    FontLoader {
        id: localFont; source: "fonts/segoe-ui-light.ttf"
    }

    // Main Content
    TabView {
        width: parent.width
        height: parent.height - 75
        y:75

        tabPosition: Qt.BottomEdge
        Tab {
            title: "Dashboard"
            component: Qt.createComponent("dashboard.qml")
        }
        Tab {
            title: "Climate"
            component: Qt.createComponent("climate.qml")
        }
        Tab {
            title: "Lighting"
            component: Qt.createComponent("lighting.qml")
        }
        Tab {
            title: "Appliances"
            component: Qt.createComponent("appliances.qml")
        }
        Tab {
            title: "Weather"
            Text {
                text: parent.title
                anchors.centerIn: parent
            }
        }
        Tab {
            title: "Settings"
            Text {
                text:parent.title
                anchors.centerIn: parent
            }
        }

        style: TabViewStyle {
            frameOverlap: 1
            tab: Rectangle {
                color: styleData.selected ? "#00eac1" :"#464d4c"
                implicitWidth: 172//Math.max(text.width + 4, 80)
                implicitHeight: 100
                Text {
                    id: text
                    text: styleData.title
                    color: "white"
                    font.capitalization: Font.AllUppercase
                    anchors.horizontalCenter:parent.horizontalCenter
                    anchors.bottom: parent.bottom
                }
                Image {
                    width:55;height:55
                    source: "content/"+styleData.title+"_w.png"
                    anchors.centerIn: parent
                }
            }
            frame: Rectangle { color: "#00eac1" }
        }

    }

    // Time/Date header

    Rectangle {
        x:0; y:0; width:350; height:75
        color: "#333333"

        Text {
            id: timeTxt
            text: Qt.formatTime(new Date(),"hh:mm")
            font.family: localFont.name;
            font.pointSize: 20;
            font.bold: true
            color: textColor
            anchors.verticalCenter: parent.verticalCenter
            x: 20
        }

        Text {
            id: dateTxt
            text: Qt.formatDate(new Date(), "d MMM yyyy")
            font.family: localFont.name;
            font.capitalization: Font.AllUppercase
            font.pointSize: 20;
            color: textColor
            anchors.verticalCenter: parent.verticalCenter
            x:150
        }
        Timer {
            id: timer
            interval: 1000
            repeat: true
            running: true

            onTriggered:
            {
                timeTxt.text = Qt.formatTime(new Date(),"hh:mm")
                dateTxt.text = Qt.formatDate(new Date(), "d MMM yyyy")
            }
        }
        MouseAreaInertia {
            anchors.fill: parent
            drag.target: parent;
            drag.axis: "YAxis"
            drag.minimumY: 0
            drag.maximumY: 593
            drag.filterChildren: true

            Clocks {
                x: 0
                y: -593
                height: 593
                width: 350
                color: "#333333"
            }
        }
    }

    // Mediaplayer header
    Rectangle {
        x:350; y:0; width:674; height:75
        color: "#464d4c"

        MouseAreaInertia {
            anchors.fill: parent
            drag.target: parent;
            drag.axis: "YAxis"
            drag.minimumY: 0
            drag.maximumY: 768 - 75 -100
            drag.filterChildren: true

            Rectangle {
                y:-(768 - 75 -100)
                height: 768 - 75 -100
                width: 1024
                x:-350
                color: "#464d4c"
                RadioPlayer {
                }
            }
        }

        Text {
            anchors.verticalCenter: parent.verticalCenter
            text: qsTr("NOW PLAYING:");
            x:20
            color: "white"
        }

        MarqueeText {
            id:textplaying
            width: 250
            x:150
            anchors.verticalCenter: parent.verticalCenter
        }
    }
}

