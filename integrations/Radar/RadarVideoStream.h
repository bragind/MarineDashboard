#pragma once
#ifndef RADARVIDEOSTREAM_H
#define RADARVIDEOSTREAM_H

#include <QObject>

class RadarVideoStream : public QObject {
    Q_OBJECT

public:
    explicit RadarVideoStream(QObject *parent = nullptr);
    ~RadarVideoStream();

signals:

public slots:

private:
};

#endif // RADARVIDEOSTREAM_H