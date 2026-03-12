#pragma once
#ifndef WEATHERROUTER_H
#define WEATHERROUTER_H

#include <QObject>

class WeatherRouter : public QObject {
    Q_OBJECT

public:
    explicit WeatherRouter(QObject *parent = nullptr);
    ~WeatherRouter();

signals:

public slots:

private:
};

#endif // WEATHERROUTER_H