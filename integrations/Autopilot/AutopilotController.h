#pragma once
#ifndef AUTOPILOTCONTROLLER_H
#define AUTOPILOTCONTROLLER_H

#include <QObject>

class AutopilotController : public QObject {
    Q_OBJECT

public:
    explicit AutopilotController(QObject *parent = nullptr);
    ~AutopilotController();

signals:

public slots:

private:
};

#endif // AUTOPILOTCONTROLLER_H