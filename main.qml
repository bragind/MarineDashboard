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

        // === КОМПАС с градусной шкалой (исправленный) ===
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
                border.width: 3
                clip: true

                // Вращающийся диск с делениями
                Item {
                    anchors.fill: parent
                    rotation: -compassHeading

                    // === ГРАДУСНАЯ ШКАЛА (360 делений) ===
                    Repeater {
                        model: 360
                        Rectangle {
                            property bool isMain: index % 10 === 0
                            property bool isMedium: index % 5 === 0

                            width: isMain ? 3 : 1
                            height: isMain ? 25 : (isMedium ? 18 : 10)
                            color: isMain ? "white" : "#aaaaaa"

                            // Поворот деления
                            rotation: index
                            transformOrigin: Item.Center

                            // Позиция по кругу (тригонометрия)
                            property real radius: compassCircle.width / 2 - 15
                            property real angleRad: (index - 90) * Math.PI / 180
                            x: compassCircle.width/2 - width/2 + radius * Math.cos(angleRad)
                            y: compassCircle.height/2 - height/2 + radius * Math.sin(angleRad)
                        }
                    }

                    // === ЦИФРЫ (каждые 30°) ===
                    Repeater {
                        model: 12
                        Text {
                            text: (index * 30 === 0) ? "" : (index * 30)
                            color: "#00ffff"
                            font.pixelSize: 14
                            font.bold: true

                            property real radius: compassCircle.width/2 - 50
                            property real angleRad: (index * 30 - 90) * Math.PI / 180
                            x: compassCircle.width/2 + radius * Math.cos(angleRad) - width/2
                            y: compassCircle.height/2 + radius * Math.sin(angleRad) - height/2

                            anchors.horizontalCenter: index * 30 === 0 || index * 30 === 180 ? parent.horizontalCenter : undefined
                        }
                    }

                    // === СТОРОНЫ СВЕТА ===
                    Text {
                        anchors.top: parent.top
                        anchors.horizontalCenter: parent.horizontalCenter
                        anchors.topMargin: 35
                        text: "N"
                        color: "blue"
                        font.bold: true
                        font.pixelSize: 18
                        z: 10
                    }
                    Text {
                        anchors.bottom: parent.bottom
                        anchors.horizontalCenter: parent.horizontalCenter
                        anchors.bottomMargin: 35
                        text: "S"
                        color: "white"
                        font.bold: true
                        font.pixelSize: 18
                        z: 10
                    }
                    Text {
                        anchors.left: parent.left
                        anchors.verticalCenter: parent.verticalCenter
                        anchors.leftMargin: 35
                        text: "W"
                        color: "white"
                        font.bold: true
                        font.pixelSize: 18
                        z: 10
                    }
                    Text {
                        anchors.right: parent.right
                        anchors.verticalCenter: parent.verticalCenter
                        anchors.rightMargin: 35
                        text: "E"
                        color: "white"
                        font.bold: true
                        font.pixelSize: 18
                        z: 10
                    }

                    // === Промежуточные стороны (NE, SE, SW, NW) ===
                    Text {
                        property real radius: compassCircle.width/2 - 50
                        property real rad: 45 * Math.PI / 180
                        x: compassCircle.width/2 + radius * Math.cos(rad - Math.PI/2) - width/2
                        y: compassCircle.height/2 + radius * Math.sin(rad - Math.PI/2) - height/2
                        text: "NE"
                        color: "#888888"
                        font.pixelSize: 12
                        font.bold: true
                        z: 10
                    }
                    Text {
                        property real radius: compassCircle.width/2 - 50
                        property real rad: 135 * Math.PI / 180
                        x: compassCircle.width/2 + radius * Math.cos(rad - Math.PI/2) - width/2
                        y: compassCircle.height/2 + radius * Math.sin(rad - Math.PI/2) - height/2
                        text: "SE"
                        color: "#888888"
                        font.pixelSize: 12
                        font.bold: true
                        z: 10
                    }
                    Text {
                        property real radius: compassCircle.width/2 - 50
                        property real rad: 225 * Math.PI / 180
                        x: compassCircle.width/2 + radius * Math.cos(rad - Math.PI/2) - width/2
                        y: compassCircle.height/2 + radius * Math.sin(rad - Math.PI/2) - height/2
                        text: "SW"
                        color: "#888888"
                        font.pixelSize: 12
                        font.bold: true
                        z: 10
                    }
                    Text {
                        property real radius: compassCircle.width/2 - 50
                        property real rad: 315 * Math.PI / 180
                        x: compassCircle.width/2 + radius * Math.cos(rad - Math.PI/2) - width/2
                        y: compassCircle.height/2 + radius * Math.sin(rad - Math.PI/2) - height/2
                        text: "NW"
                        color: "#888888"
                        font.pixelSize: 12
                        font.bold: true
                        z: 10
                    }
                }

                // === Стрелка (неподвижная, указывает вверх) ===
                Rectangle {
                    anchors.centerIn: parent
                    width: 5
                    height: parent.height * 0.35
                    color: "red"
                    radius: 2
                    transformOrigin: Item.Bottom
                    anchors.bottom: parent.verticalCenter

                    Rectangle {
                        anchors.horizontalCenter: parent.horizontalCenter
                        anchors.bottom: parent.top
                        width: 12
                        height: 15
                        color: "red"
                        radius: 6
                    }
                }

                // Южная часть стрелки
                Rectangle {
                    anchors.centerIn: parent
                    width: 5
                    height: parent.height * 0.15
                    color: "white"
                    radius: 2
                    transformOrigin: Item.Top
                    anchors.top: parent.verticalCenter
                }

                // Центр
                Rectangle {
                    anchors.centerIn: parent
                    width: 18
                    height: 18
                    radius: 9
                    color: "#cccccc"
                    border.color: "#666666"
                    border.width: 2
                    z: 100
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
