#pragma once
#ifndef VESSELCONFIG_H
#define VESSELCONFIG_H

#include <QObject>

class VesselConfig : public QObject {
    Q_OBJECT

public:
    explicit VesselConfig(QObject *parent = nullptr);
    ~VesselConfig();

signals:

public slots:

private:
};

#endif // VESSELCONFIG_H