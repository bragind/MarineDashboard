#pragma once
#ifndef PERFORMANCEPOLAR_H
#define PERFORMANCEPOLAR_H

#include <QObject>

class PerformancePolar : public QObject {
    Q_OBJECT

public:
    explicit PerformancePolar(QObject *parent = nullptr);
    ~PerformancePolar();

signals:

public slots:

private:
};

#endif // PERFORMANCEPOLAR_H