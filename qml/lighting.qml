import QtQuick 2.5

Item {

    Grid {
        x: 50;y:50
        columns: 2
        spacing: 15
        verticalItemAlignment: Grid.AlignVCenter
        Text {
            text: "Lighting 1"
            width: 250; height: 50
            color:"white"
        }
        DefaultSwitch {
            port: 1
            onclickedclass: lighting
        }
        Text {
            text: "Lighting 2"
            width: 250; height: 50
            color:"white"
        }
        DefaultSwitch {
            port: 2
            onclickedclass: lighting
        }
        Text {
            text: "Lighting 3"
            width: 250; height: 50
            color:"white"
        }
        DefaultSwitch {
            port: 3
            onclickedclass: lighting
        }
        Text {
            text: "Lighting 4"
            width: 250; height: 50
            color:"white"
        }
        DefaultSwitch {
            port: 4
            onclickedclass: lighting
        }
        Text {
            text: "Lighting 5"
            width: 250; height: 50
            color:"white"
        }
        DefaultSwitch {
            port: 5
            onclickedclass: lighting
        }
        Text {
            text: "Lighting 6"
            width: 250; height: 50
            color:"white"
        }
        DefaultSwitch {
            port: 6
            onclickedclass: lighting
        }
        Text {
            text: "Lighting 7"
            width: 250; height: 50
            color:"white"
        }
        DefaultSwitch {
            port: 7
            onclickedclass: lighting
        }
        Text {
            text: "Lighting 8"
            width: 250; height: 50
            color:"white"
        }
        DefaultSwitch {
            port: 8
            onclickedclass: lighting
        }
    }
}

