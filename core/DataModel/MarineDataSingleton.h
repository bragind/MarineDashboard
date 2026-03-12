#pragma once
#ifndef MARINEDATASINGLETON_H
#define MARINEDATASINGLETON_H

#include <QObject>

class MarineDataSingleton : public QObject {
    Q_OBJECT

public:
    explicit MarineDataSingleton(QObject *parent = nullptr);
    ~MarineDataSingleton();

signals:

public slots:

private:
};

#endif // MARINEDATASINGLETON_H