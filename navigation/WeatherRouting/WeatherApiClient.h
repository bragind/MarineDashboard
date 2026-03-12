#pragma once
#ifndef WEATHERAPICLIENT_H
#define WEATHERAPICLIENT_H

#include <QObject>

class WeatherApiClient : public QObject {
    Q_OBJECT

public:
    explicit WeatherApiClient(QObject *parent = nullptr);
    ~WeatherApiClient();

signals:

public slots:

private:
};

#endif // WEATHERAPICLIENT_H