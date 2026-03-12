#pragma once
#ifndef VESSELSTATE_H
#define VESSELSTATE_H

#include <QObject>

class VesselState : public QObject {
    Q_OBJECT

public:
    explicit VesselState(QObject *parent = nullptr);
    ~VesselState();

signals:

public slots:

private:
};

#endif // VESSELSTATE_H