#pragma once
#ifndef VESSELTYPE_H
#define VESSELTYPE_H

#include <QObject>

class VesselType : public QObject {
    Q_OBJECT

public:
    explicit VesselType(QObject *parent = nullptr);
    ~VesselType();

signals:

public slots:

private:
};

#endif // VESSELTYPE_H