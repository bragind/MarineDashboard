#pragma once
#ifndef ROUTEBUILDER_H
#define ROUTEBUILDER_H

#include <QObject>

class RouteBuilder : public QObject {
    Q_OBJECT

public:
    explicit RouteBuilder(QObject *parent = nullptr);
    ~RouteBuilder();

signals:

public slots:

private:
};

#endif // ROUTEBUILDER_H