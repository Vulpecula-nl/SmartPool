import QtQuick 2.0

Rectangle {
    Timer {
        interval: 2000; running: true; repeat: true
                onTriggered: {
                    sensorData.updateCurrentValues();
                    temperature.text = sensorData.getCurrentTemperature();
                    humidity.text = sensorData.getCurrentHumidity();
                    //console.log("Temp: ", temperature.text, "Humidity: ", sensorData.getCurrentHumidity())
        }
    }
    id: dashboard
    color: "#00eac1"

    Text {

        text: qsTr("TEMPERATURE INSIDE NOW")
        font.family: localFont.name;
        font.pointSize: 15;
        font.bold: true
        color: textColor
        x: 50; y: 115

    }

    Text {
        id: temperature
        font.family: localFont.name;
        font.pointSize: 75;
        font.bold: true
        color: textColor
        horizontalAlignment: Text.AlignRight
        x: 225; y: 150
        width: 100

    }

    Text {
        text: qsTr("°C")
        font.family: localFont.name;
        font.pointSize: 50;
        font.bold: true
        color: "#14ab90"
        x: 350; y: 190
    }

    Text {
        text: qsTr("HUMIDITY INSIDE NOW")
        font.family: localFont.name;
        font.pointSize: 15;
        font.bold: true
        color: textColor
        x: 500; y: 115
    }

    Text {
        id: humidity
        font.family: localFont.name;
        font.pointSize: 75;
        font.bold: true
        color: textColor
        horizontalAlignment: Text.AlignRight
        x: 725; y: 150
        width: 100
    }

    Text {
        text: qsTr("%")
        font.family: localFont.name;
        font.pointSize: 50;
        font.bold: true
        color: "#14ab90"
        x: 850; y: 190
    }
}

