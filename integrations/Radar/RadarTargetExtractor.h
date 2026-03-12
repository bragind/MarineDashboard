#pragma once
#ifndef RADARTARGETEXTRACTOR_H
#define RADARTARGETEXTRACTOR_H

#include <QObject>

class RadarTargetExtractor : public QObject {
    Q_OBJECT

public:
    explicit RadarTargetExtractor(QObject *parent = nullptr);
    ~RadarTargetExtractor();

signals:

public slots:

private:
};

#endif // RADARTARGETEXTRACTOR_H