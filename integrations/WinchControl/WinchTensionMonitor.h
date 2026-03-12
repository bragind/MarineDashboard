#pragma once
#ifndef WINCHTENSIONMONITOR_H
#define WINCHTENSIONMONITOR_H

#include <QObject>

class WinchTensionMonitor : public QObject {
    Q_OBJECT

public:
    explicit WinchTensionMonitor(QObject *parent = nullptr);
    ~WinchTensionMonitor();

signals:

public slots:

private:
};

#endif // WINCHTENSIONMONITOR_H