#pragma once
#ifndef SPEEDLOG_H
#define SPEEDLOG_H

#include <QObject>

class SpeedLog : public QObject {
    Q_OBJECT

public:
    explicit SpeedLog(QObject *parent = nullptr);
    ~SpeedLog();

signals:

public slots:

private:
};

#endif // SPEEDLOG_H