import QtQuick 2.0
import QtCharts 2.0

Item {
    Row {
        id: activeChartRow
        anchors.left: chart.left
        anchors.right: chart.right
        anchors.top: chart.top
        anchors.topMargin: 4
        spacing: 52
        onWidthChanged: {
            var buttonsLen = maxButton.width + yearButton.width + monthButton.width + weekButton.width;
            var space = (width - buttonsLen) / 3;
            spacing = Math.max(space, 10);
        }

        Button {
            id: maxButton
            text: "Max"
            buttonEnabled: chart.activeChart === "max"
            onClicked: {
                chart.activeChart = "max";
                chart.update();
            }
        }
        Button {
            id: yearButton
            text: "Year"
            buttonEnabled: chart.activeChart === "year"
            onClicked: {
                chart.activeChart = "year";
                chart.update();
            }
        }
        Button {
            id: monthButton
            text: "Month"
            buttonEnabled: chart.activeChart === "month"
            onClicked: {
                chart.activeChart = "month";
                chart.update();
            }
        }
        Button {
            id: weekButton
            text: "Week"
            buttonEnabled: chart.activeChart === "week"
            onClicked: {
                chart.activeChart = "week";
                chart.update();
            }
        }
    }
    ChartView {
        title: "Inside measurement"
        anchors.fill: parent
        antialiasing: true

        ValueAxis {
           id: valueAxisY2
           min: 0
           max: 100
           titleText: "Humidity [%]"
        }

        ValueAxis {
            id: valueAxisX
            // Hide the value axis; it is only used to map the line series to bar categories axis
            visible: false
            min: 0
            max: 5
        }

        ValueAxis{
            id: valueAxisY
            min: 15
            max: 30
            titleText: "Temperature [&deg;C]"
        }

        LineSeries {
            id: humiSeries
            axisX: valueAxisX
            axisYRight: valueAxisY2
            name: "Humidity"
        }
        LineSeries {
            id: tempSeries
            axisX: DateTimeAxis {
                       format: "hh:mm"
                       tickCount: 5
                   }
            axisY: valueAxisY
            name: "Temperature"
        }

    }


    Timer {
            interval: 10000
            repeat: true
            triggeredOnStart: true
            running: true
            onTriggered: {
                parseSensorData();
            }
    }

    function parseSensorData() {
        tempSeries.clear();
        humiSeries.clear();

        var sensorLog = JSON.parse(dbmanager.printAllSensorValues());


        for(var i = 0; i < sensorLog.length; i++) {
            var obj = sensorLog[i];
            if (obj.sensor_id == 1)
            {
                tempSeries.append(toMsecsSinceEpoch(new Date(obj.timestamp)), obj.value);

            }
            if (obj.sensor_id == 2)
            {
                humiSeries.append(toMsecsSinceEpoch(new Date(obj.timestamp)), obj.value);

            }

        }
    }
    function toMsecsSinceEpoch(date) {
        var msecs = date.getTime();
        return msecs;
    }
}

