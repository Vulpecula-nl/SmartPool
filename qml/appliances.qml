import QtQuick 2.5


Item {

    Grid {
        x: 50;y:50
        columns: 2
        spacing: 15
        verticalItemAlignment: Grid.AlignVCenter
        Text {
            text: "Appliance 1"
            width: 250; height: 50
            color:"white"
        }
        DefaultSwitch {
            port: 1
            onclickedclass: appliances
        }
        Text {
            text: "Appliance 2"
            width: 250; height: 50
            color:"white"
        }
        DefaultSwitch {
            port: 2
            onclickedclass: appliances
        }
        Text {
            text: "Appliance 3"
            width: 250; height: 50
            color:"white"
        }
        DefaultSwitch {
            port: 3
            onclickedclass: appliances
        }
        Text {
            text: "Appliance 4"
            width: 250; height: 50
            color:"white"
        }
        DefaultSwitch {
            port: 4
            onclickedclass: appliances
        }
        Text {
            text: "Appliance 5"
            width: 250; height: 50
            color:"white"
        }
        DefaultSwitch {
            port: 5
            onclickedclass: appliances
        }
        Text {
            text: "Appliance 6"
            width: 250; height: 50
            color:"white"
        }
        DefaultSwitch {
            port: 6
            onclickedclass: appliances
        }
        Text {
            text: "Lighting 7"
            width: 250; height: 50
            color:"white"
        }
        DefaultSwitch {
            port: 7
        }
        Text {
            text: "Lighting 8"
            width: 250; height: 50
            color:"white"
        }
        DefaultSwitch {
            port: 8
        }
    }
}
