import QtQuick 2.7
import QtQuick.Controls 2.0

NavigationScreen {
    id: root
    
    property real value: 0
    
    Rectangle {
        anchors.fill: parent
        color: "#112240"
        radius: 10
        
        Text {
            anchors.centerIn: parent
            text: "NavigationScreen"
            color: "white"
            font.pixelSize: 14
        }
    }
}