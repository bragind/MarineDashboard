#pragma once
#ifndef TIDEAPICLIENT_H
#define TIDEAPICLIENT_H

#include <QObject>

class TideApiClient : public QObject {
    Q_OBJECT

public:
    explicit TideApiClient(QObject *parent = nullptr);
    ~TideApiClient();

signals:

public slots:

private:
};

#endif // TIDEAPICLIENT_H