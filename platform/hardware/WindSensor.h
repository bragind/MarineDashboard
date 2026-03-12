#pragma once
#ifndef WINDSENSOR_H
#define WINDSENSOR_H

#include <QObject>

class WindSensor : public QObject {
    Q_OBJECT

public:
    explicit WindSensor(QObject *parent = nullptr);
    ~WindSensor();

signals:

public slots:

private:
};

#endif // WINDSENSOR_H