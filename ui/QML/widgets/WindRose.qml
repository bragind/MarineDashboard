import QtQuick 2.7
import QtQuick.Controls 2.0

WindRose {
    id: root
    
    property real value: 0
    
    Rectangle {
        anchors.fill: parent
        color: "#112240"
        radius: 10
        
        Text {
            anchors.centerIn: parent
            text: "WindRose"
            color: "white"
            font.pixelSize: 14
        }
    }
}