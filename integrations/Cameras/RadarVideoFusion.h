#pragma once
#ifndef RADARVIDEOFUSION_H
#define RADARVIDEOFUSION_H

#include <QObject>

class RadarVideoFusion : public QObject {
    Q_OBJECT

public:
    explicit RadarVideoFusion(QObject *parent = nullptr);
    ~RadarVideoFusion();

signals:

public slots:

private:
};

#endif // RADARVIDEOFUSION_H