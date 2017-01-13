import QtQuick 2.5
import QtQuick.Controls 1.4
import QtQuick.Controls.Styles 1.4

Item {
    property string imageSource
    property int streamNum

    MouseArea {
        width: 160
        height: 120
        Image {
            source: imageSource
        }
        onClicked: {
            radioPlayer.playStream(streamNum);

        }
    }
}
