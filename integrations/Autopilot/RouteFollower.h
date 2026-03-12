#pragma once
#ifndef ROUTEFOLLOWER_H
#define ROUTEFOLLOWER_H

#include <QObject>

class RouteFollower : public QObject {
    Q_OBJECT

public:
    explicit RouteFollower(QObject *parent = nullptr);
    ~RouteFollower();

signals:

public slots:

private:
};

#endif // ROUTEFOLLOWER_H