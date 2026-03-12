#pragma once
#ifndef ROUTEOPTIMIZER_H
#define ROUTEOPTIMIZER_H

#include <QObject>

class RouteOptimizer : public QObject {
    Q_OBJECT

public:
    explicit RouteOptimizer(QObject *parent = nullptr);
    ~RouteOptimizer();

signals:

public slots:

private:
};

#endif // ROUTEOPTIMIZER_H