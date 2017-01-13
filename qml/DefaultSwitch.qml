import QtQuick 2.0
import QtQuick.Controls 1.4
import QtQuick.Controls.Styles 1.4

Item {
    id: defaultSwitch
    width: 50; height: 50
    property int port: 0
    property var onclickedclass


    Row{
        spacing: 10

        Text {
            anchors.verticalCenter: parent.verticalCenter
            text: "OFF"
            color: "white"
            font.pixelSize: 22
        }

        Switch {
            id: lightingSwitch
            style: SwitchStyle {
                handle: Rectangle {
                    width: 50
                    height: 50
                    radius: 9
                    color: "white"
                }
                groove: Rectangle {
                        implicitWidth: 100
                        implicitHeight: 50
                        radius: 9
                        color: "#14ab90"
                }
            }
            onClicked:
            {
                onclickedclass.write(port, lightingSwitch.checked);
            }
        }

        Text {
            anchors.verticalCenter: parent.verticalCenter
            text: "ON"
            color: "white"
            font.pixelSize: 22
        }

    }
}

