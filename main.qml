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
                    stepSize: 1
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
                    stepSize: 1
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

            Column {
                anchors.fill: parent
                anchors.margins: 10
                spacing: 10

                Text {
                    anchors.horizontalCenter: parent.horizontalCenter
                    text: "КОМПАС"
                    color: "#00ccff"
                    font.pixelSize: 16
                    font.bold: true
                }

                // Контейнер компаса фиксированного размера
                Item {
                    width: parent.width
                    height: 280

                    // Круг компаса
                    Rectangle {
                        id: compassCircle
                        anchors.centerIn: parent
                        width: 350
                        height: 350
                        radius: width / 2
                        color: "#003366"
                        border.color: "#0099ff"
                        border.width: 2

                        // Вращающийся диск с делениями
                        Item {
                            anchors.fill: parent
                            anchors.margins: 15
                            rotation: -compassHeading

                            Repeater {
                                model: 36
                                Rectangle {
                                    property bool isMain: index % 9 === 0
                                    width: isMain ? 3 : 1
                                    height: isMain ? 20 : 10
                                    color: isMain ? "white" : "#888888"
                                    rotation: index * 10
                                    x: parent.width/2 - width/2
                                    y: isMain ? 5 : 10
                                    transformOrigin: Item.Bottom
                                    anchors.horizontalCenter: parent.horizontalCenter
                                }
                            }

                            // N на диске
                            Text {
                                anchors.top: parent.top
                                anchors.horizontalCenter: parent.horizontalCenter
                                text: "N"
                                color: "red"
                                font.bold: true
                                font.pixelSize: 16
                            }
                        }

                        // Стрелка (неподвижная, указывает вверх)
                        Rectangle {
                            anchors.centerIn: parent
                            width: 6
                            height: parent.height * 0.35
                            color: "red"
                            radius: 3
                            transformOrigin: Item.Bottom
                            anchors.bottom: parent.verticalCenter

                            Rectangle {
                                anchors.horizontalCenter: parent.horizontalCenter
                                anchors.bottom: parent.top
                                width: 14
                                height: 16
                                color: "red"
                                radius: 7
                            }
                        }

                        // Южная часть стрелки
                        Rectangle {
                            anchors.centerIn: parent
                            width: 6
                            height: parent.height * 0.15
                            color: "white"
                            radius: 3
                            transformOrigin: Item.Top
                            anchors.top: parent.verticalCenter
                        }

                        // Стороны света (фиксированные, поверх всего)
                        Text {
                            anchors.horizontalCenter: parent.horizontalCenter
                            anchors.top: parent.top
                            anchors.topMargin: 8
                            text: "N"
                            color: "#00ff00"
                            font.bold: true
                            font.pixelSize: 18
                            z: 100
                        }
                        Text {
                            anchors.horizontalCenter: parent.horizontalCenter
                            anchors.bottom: parent.bottom
                            anchors.bottomMargin: 8
                            text: "S"
                            color: "white"
                            font.bold: true
                            font.pixelSize: 18
                            z: 100
                        }
                        Text {
                            anchors.verticalCenter: parent.verticalCenter
                            anchors.left: parent.left
                            anchors.leftMargin: 8
                            text: "W"
                            color: "white"
                            font.bold: true
                            font.pixelSize: 18
                            z: 100
                        }
                        Text {
                            anchors.verticalCenter: parent.verticalCenter
                            anchors.right: parent.right
                            anchors.rightMargin: 8
                            text: "E"
                            color: "white"
                            font.bold: true
                            font.pixelSize: 18
                            z: 100
                        }

                        // Центр
                        Rectangle {
                            anchors.centerIn: parent
                            width: 24
                            height: 24
                            radius: 12
                            color: "#cccccc"
                            border.color: "#666666"
                            border.width: 2
                            z: 200
                        }
                    }

                    // Градусы под компасом
                    Text {
                        anchors.horizontalCenter: compassCircle.horizontalCenter
                        anchors.bottom: parent.bottom
                        text: Math.round(compassHeading) + "°"
                        color: "#00ff00"
                        font.pixelSize: 20
                        font.bold: true
                    }
                }
            }
        }
    }
}
