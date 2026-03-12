#pragma once
#ifndef WAYPOINTMANAGER_H
#define WAYPOINTMANAGER_H

#include <QObject>

class WaypointManager : public QObject {
    Q_OBJECT

public:
    explicit WaypointManager(QObject *parent = nullptr);
    ~WaypointManager();

signals:

public slots:

private:
};

#endif // WAYPOINTMANAGER_H