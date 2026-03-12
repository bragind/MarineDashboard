#pragma once
#ifndef DRIFTCALCULATOR_H
#define DRIFTCALCULATOR_H

#include <QObject>

class DriftCalculator : public QObject {
    Q_OBJECT

public:
    explicit DriftCalculator(QObject *parent = nullptr);
    ~DriftCalculator();

signals:

public slots:

private:
};

#endif // DRIFTCALCULATOR_H