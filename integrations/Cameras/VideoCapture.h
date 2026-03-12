#pragma once
#ifndef VIDEOCAPTURE_H
#define VIDEOCAPTURE_H

#include <QObject>

class VideoCapture : public QObject {
    Q_OBJECT

public:
    explicit VideoCapture(QObject *parent = nullptr);
    ~VideoCapture();

signals:

public slots:

private:
};

#endif // VIDEOCAPTURE_H