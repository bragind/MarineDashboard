#pragma once
#ifndef ISOCHRONEROUTER_H
#define ISOCHRONEROUTER_H

#include <QObject>

class IsochroneRouter : public QObject {
    Q_OBJECT

public:
    explicit IsochroneRouter(QObject *parent = nullptr);
    ~IsochroneRouter();

signals:

public slots:

private:
};

#endif // ISOCHRONEROUTER_H