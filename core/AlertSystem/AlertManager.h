#pragma once
#ifndef ALERTMANAGER_H
#define ALERTMANAGER_H

#include <QObject>

class AlertManager : public QObject {
    Q_OBJECT

public:
    explicit AlertManager(QObject *parent = nullptr);
    ~AlertManager();

signals:

public slots:

private:
};

#endif // ALERTMANAGER_H