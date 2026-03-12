#pragma once
#ifndef GPSRECEIVER_H
#define GPSRECEIVER_H

#include <QObject>

class GpsReceiver : public QObject {
    Q_OBJECT

public:
    explicit GpsReceiver(QObject *parent = nullptr);
    ~GpsReceiver();

signals:

public slots:

private:
};

#endif // GPSRECEIVER_H