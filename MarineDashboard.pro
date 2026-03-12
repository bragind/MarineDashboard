# MarineDashboard.pro
# Qt 5.7 compatible | C++14 | Marine Instrument Panel

# === QT MODULES ===
QT += core \
    gui \
    quick \
    qml \
    serialport \
    charts \
    multimediawidgets

# === C++ STANDARD ===
CONFIG += c++14
CONFIG += qmltypes
CONFIG += release

# === PROJECT INFO ===
TARGET = MarineDashboard
TEMPLATE = app
VERSION = 0.1.0

# === SOURCE FILES ===
SOURCES += \
    src/main.cpp \
    core/NmeaEngine/Nmea0183Parser.cpp \
    core/DataModel/MarineDataSingleton.cpp

# === HEADER FILES ===
HEADERS += \
    # Core: NmeaEngine \
    core/NmeaEngine/NmeaTypes.h \
    core/NmeaEngine/NmeaSentenceValidator.h \
    core/NmeaEngine/Nmea0183Parser.h \
    core/NmeaEngine/Nmea2000Decoder.h \
    \
    # Core: CanBusEngine \
    core/CanBusEngine/CanSocket.h \
    core/CanBusEngine/PgnEncoder.h \
    core/CanBusEngine/PgnDecoder.h \
    \
    # Core: DataModel \
    core/DataModel/MarineDataSingleton.h \
    core/DataModel/VesselState.h \
    core/DataModel/EnvironmentalData.h \
    core/DataModel/NavigationData.h \
    \
    # Core: AlertSystem \
    core/AlertSystem/AlertManager.h \
    core/AlertSystem/AnchorWatchAlert.h \
    core/AlertSystem/CollisionAlert.h \
    core/AlertSystem/DepthAlert.h \
    \
    # Integrations: AIS \
    integrations/AIS/AisDecoder.h \
    integrations/AIS/AisTargetModel.h \
    integrations/AIS/CollisionCalculator.h \
    \
    # Integrations: Radar \
    integrations/Radar/RadarVideoStream.h \
    integrations/Radar/RadarTargetExtractor.h \
    \
    # Integrations: Sonar \
    integrations/Sonar/ChirpSonarParser.h \
    integrations/Sonar/FishFinderModel.h \
    integrations/Sonar/DepthSounder.h \
    \
    # Integrations: Cameras \
    integrations/Cameras/VideoCapture.h \
    integrations/Cameras/CameraSwitcher.h \
    integrations/Cameras/RadarVideoFusion.h \
    \
    # Integrations: Autopilot \
    integrations/Autopilot/AutopilotController.h \
    integrations/Autopilot/RouteFollower.h \
    integrations/Autopilot/ApbSentenceBuilder.h \
    \
    # Integrations: WinchControl \
    integrations/WinchControl/ElectricWinchController.h \
    integrations/WinchControl/WinchTensionMonitor.h \
    integrations/WinchControl/SheetControlModel.h \
    \
    # Integrations: AnchorWatch \
    integrations/AnchorWatch/AnchorWatchManager.h \
    integrations/AnchorWatch/DriftCalculator.h \
    integrations/AnchorWatch/AnchorAlarm.h \
    \
    # Navigation: WeatherRouting \
    navigation/WeatherRouting/WeatherRouter.h \
    navigation/WeatherRouting/IsochroneRouter.h \
    navigation/WeatherRouting/GeneticAlgorithm.h \
    navigation/WeatherRouting/WeatherApiClient.h \
    navigation/WeatherRouting/RouteOptimizer.h \
    \
    # Navigation: TideCurrent \
    navigation/TideCurrent/TideApiClient.h \
    navigation/TideCurrent/CurrentPredictor.h \
    navigation/TideCurrent/TideTable.h \
    \
    # Navigation: RoutePlanning \
    navigation/RoutePlanning/RouteBuilder.h \
    navigation/RoutePlanning/WaypointManager.h \
    navigation/RoutePlanning/GpxKmlExporter.h \
    \
    # Vessel \
    vessel/VesselType.h \
    vessel/VesselConfig.h \
    vessel/SailboatProfile.h \
    vessel/MotorboatProfile.h \
    vessel/PerformancePolar.h \
    \
    # Platform: Hardware \
    platform/hardware/GpsReceiver.h \
    platform/hardware/WindSensor.h \
    platform/hardware/DepthTransducer.h \
    platform/hardware/SpeedLog.h

# === QML FILES ===
QML_FILES += \
    ui/QML/MainDashboard.qml \
    ui/QML/StormMode.qml \
    ui/QML/widgets/Compass3D.qml \
    ui/QML/widgets/WindRose.qml \
    ui/QML/widgets/SpeedGauge.qml \
    ui/QML/widgets/DepthGraph.qml \
    ui/QML/widgets/RadarCanvas.qml \
    ui/QML/widgets/AisTargetList.qml \
    ui/QML/widgets/SonarWaterfall.qml \
    ui/QML/widgets/WinchStatus.qml \
    ui/QML/screens/NavigationScreen.qml \
    ui/QML/screens/RadarScreen.qml \
    ui/QML/screens/SonarScreen.qml \
    ui/QML/screens/AutopilotScreen.qml \
    ui/QML/screens/WeatherRouteScreen.qml \
    ui/QML/screens/AnchorWatchScreen.qml \
    integrations/Radar/RadarOverlay.qml \
    integrations/AIS/AisDisplay.qml \
    integrations/Sonar/SonarView.qml \
    integrations/Cameras/CameraGrid.qml \
    integrations/Autopilot/AutopilotPanel.qml \
    integrations/WinchControl/WinchControlPanel.qml \
    integrations/AnchorWatch/AnchorWatchView.qml \
    navigation/RoutePlanning/RouteVisualization.qml

# === RESOURCES ===
RESOURCES += \
    resources/qml.qrc

# === INCLUDE PATHS (для #include "Header.h") ===
INCLUDEPATH += \
    $$PWD \
    $$PWD/src \
    $$PWD/core \
    $$PWD/core/NmeaEngine \
    $$PWD/core/CanBusEngine \
    $$PWD/core/DataModel \
    $$PWD/core/AlertSystem \
    $$PWD/integrations \
    $$PWD/integrations/AIS \
    $$PWD/integrations/Radar \
    $$PWD/integrations/Sonar \
    $$PWD/integrations/Cameras \
    $$PWD/integrations/Autopilot \
    $$PWD/integrations/WinchControl \
    $$PWD/integrations/AnchorWatch \
    $$PWD/navigation \
    $$PWD/navigation/WeatherRouting \
    $$PWD/navigation/TideCurrent \
    $$PWD/navigation/RoutePlanning \
    $$PWD/vessel \
    $$PWD/platform/hardware

# === QML IMPORT PATH (для import MarineDashboard 1.0) ===
QML_IMPORT_PATH += \
    $$PWD/ui/QML \
    $$PWD/ui/QML/widgets \
    $$PWD/ui/QML/screens

# === COMPILER FLAGS ===
QMAKE_CXXFLAGS += -Wall -Wextra -std=c++14

# Platform-specific flags
win32 {
    QMAKE_CXXFLAGS += -DWIN32_LEAN_AND_MEAN -D_UNICODE -DUNICODE
    # Для SerialPort на Windows
    LIBS += -lsetupapi
}

linux {
    QMAKE_CXXFLAGS += -D_LINUX
    # Для SocketCAN на Linux
    LIBS += -lsocketcan
}

android {
    # Android-specific permissions
    ANDROID_PERMISSIONS += \
        android.permission.ACCESS_FINE_LOCATION \
        android.permission.ACCESS_COARSE_LOCATION \
        android.permission.INTERNET
}

# === DEPLOYMENT (сохраняем вашу строку, но после наших настроек) ===
include(deployment.pri)

# === INSTALL RULES ===
target.path = $$[QT_INSTALL_BINS]
INSTALLS += target
