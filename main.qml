import QtQuick 2.7
import QtQuick.Window 2.2
import QtQuick.Controls 2.0
import QtQuick.Layouts 1.3
import QtQuick.Extras 1.4

Window {
    width: 800
    height: 600
    visible: true
    title: "Marine Dashboard v0.1"
    color: "#001f3f"

    property real speed: 0
    property real depth: 0
    property real compassHeading: 0

    Timer {
        interval: 1000
        running: true
        repeat: true
        onTriggered: speed = Math.random() * 50
    }

    Timer {
        interval: 1500
        running: true
        repeat: true
        onTriggered: depth = Math.random() * 100
    }

    Timer {
        interval: 500
        running: true
        repeat: true
        onTriggered: {
            var change = (Math.random() - 0.5) * 20
            compassHeading = (compassHeading + change + 360) % 360
        }
    }

    GridLayout {
        anchors.fill: parent
        anchors.margins: 15
        columns: 2
        rows: 2
        rowSpacing: 15
        columnSpacing: 15

        // === Спидометр ===
        Rectangle {
            Layout.fillWidth: true
            Layout.fillHeight: true
            color: "#002855"
            radius: 10
            border.color: "#0066cc"
            border.width: 2

            Column {
                anchors.centerIn: parent
                spacing: 10

                Text {
                    anchors.horizontalCenter: parent.horizontalCenter
                    text: "СКОРОСТЬ"
                    color: "#00ccff"
                    font.pixelSize: 14
                    font.bold: true
                }

                Text {
                    anchors.horizontalCenter: parent.horizontalCenter
                    text: Math.round(speed) + " узлов"
                    color: "white"
                    font.pixelSize: 20
                    font.bold: true
                }

                CircularGauge {
                    width: 180
                    height: 180
                    value: speed
                    minimumValue: 0
                    maximumValue: 50
                    tickmarksVisible: true
                }
            }
        }

        // === Глубина ===
        Rectangle {
            Layout.fillWidth: true
            Layout.fillHeight: true
            color: "#002855"
            radius: 10
            border.color: "#0066cc"
            border.width: 2

            Column {
                anchors.centerIn: parent
                spacing: 10

                Text {
                    anchors.horizontalCenter: parent.horizontalCenter
                    text: "ГЛУБИНА"
                    color: "#00ccff"
                    font.pixelSize: 14
                    font.bold: true
                }

                Text {
                    anchors.horizontalCenter: parent.horizontalCenter
                    text: Math.round(depth) + " м"
                    color: "white"
                    font.pixelSize: 20
                    font.bold: true
                }

                CircularGauge {
                    width: 180
                    height: 180
                    value: depth
                    minimumValue: 0
                    maximumValue: 100
                    tickmarksVisible: true
                }
            }
        }

        // === КОМПАС ===
        Rectangle {
            Layout.fillWidth: true
            Layout.fillHeight: true
            Layout.columnSpan: 2
            color: "#002855"
            radius: 10
            border.color: "#0066cc"
            border.width: 2

            // Заголовок
            Text {
                anchors.top: parent.top
                anchors.topMargin: 15
                anchors.horizontalCenter: parent.horizontalCenter
                text: "КОМПАС"
                color: "#00ccff"
                font.pixelSize: 18
                font.bold: true
            }

            // Круг компаса
            Rectangle {
                id: compassCircle
                anchors.centerIn: parent
                width: 180
                height: 180
                radius: width / 2
                color: "#003366"
                border.color: "#0099ff"
                border.width: 2
                clip: true

                // Вращающийся диск с делениями
                Item {
                    anchors.fill: parent
                    rotation: -compassHeading

                    Repeater {
                        model: 36
                        Rectangle {
                            width: (index % 9 === 0) ? 3 : 1
                            height: (index % 9 === 0) ? 20 : 10
                            color: (index % 9 === 0) ? "white" : "#888888"
                            rotation: index * 10
                            x: parent.width/2 - width/2
                            y: (index % 9 === 0) ? 10 : 15
                            transformOrigin: Item.Bottom
                            anchors.horizontalCenter: parent.horizontalCenter
                        }
                    }

                    // N на диске
                    Text {
                        anchors.top: parent.top
                        anchors.horizontalCenter: parent.horizontalCenter
                        anchors.topMargin: 5
                        text: "N"
                        color: "red"
                        font.bold: true
                        font.pixelSize: 14
                    }
                }

                // Стрелка (указывает вверх)
                Rectangle {
                    anchors.centerIn: parent
                    width: 4
                    height: parent.height * 0.35
                    color: "red"
                    radius: 2
                    transformOrigin: Item.Bottom
                    anchors.bottom: parent.verticalCenter

                    Rectangle {
                        anchors.horizontalCenter: parent.horizontalCenter
                        anchors.bottom: parent.top
                        width: 10
                        height: 12
                        color: "red"
                        radius: 5
                    }
                }

                // Южная часть
                Rectangle {
                    anchors.centerIn: parent
                    width: 4
                    height: parent.height * 0.15
                    color: "white"
                    radius: 2
                    transformOrigin: Item.Top
                    anchors.top: parent.verticalCenter
                }

                // Центр
                Rectangle {
                    anchors.centerIn: parent
                    width: 16
                    height: 16
                    radius: 8
                    color: "#cccccc"
                    border.color: "#666666"
                    border.width: 2
                    z: 100
                }

                // Стороны света (внутри круга)
                Text {
                    anchors.top: parent.top
                    anchors.horizontalCenter: parent.horizontalCenter
                    anchors.topMargin: 8
                    text: "N"
                    color: "#00ff00"
                    font.bold: true
                    font.pixelSize: 16
                    z: 50
                }
                Text {
                    anchors.bottom: parent.bottom
                    anchors.horizontalCenter: parent.horizontalCenter
                    anchors.bottomMargin: 8
                    text: "S"
                    color: "white"
                    font.bold: true
                    font.pixelSize: 16
                    z: 50
                }
                Text {
                    anchors.left: parent.left
                    anchors.verticalCenter: parent.verticalCenter
                    anchors.leftMargin: 8
                    text: "W"
                    color: "white"
                    font.bold: true
                    font.pixelSize: 16
                    z: 50
                }
                Text {
                    anchors.right: parent.right
                    anchors.verticalCenter: parent.verticalCenter
                    anchors.rightMargin: 8
                    text: "E"
                    color: "white"
                    font.bold: true
                    font.pixelSize: 16
                    z: 50
                }
            }

            // Градусы под компасом
            Text {
                anchors.horizontalCenter: compassCircle.horizontalCenter
                anchors.top: compassCircle.bottom
                anchors.topMargin: 10
                text: Math.round(compassHeading) + "°"
                color: "#00ff00"
                font.pixelSize: 20
                font.bold: true
            }
        }
    }
}
