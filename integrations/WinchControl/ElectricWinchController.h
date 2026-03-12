#pragma once
#ifndef ELECTRICWINCHCONTROLLER_H
#define ELECTRICWINCHCONTROLLER_H

#include <QObject>

class ElectricWinchController : public QObject {
    Q_OBJECT

public:
    explicit ElectricWinchController(QObject *parent = nullptr);
    ~ElectricWinchController();

signals:

public slots:

private:
};

#endif // ELECTRICWINCHCONTROLLER_H