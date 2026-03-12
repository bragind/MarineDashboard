#pragma once
#ifndef COLLISIONCALCULATOR_H
#define COLLISIONCALCULATOR_H

#include <QObject>

class CollisionCalculator : public QObject {
    Q_OBJECT

public:
    explicit CollisionCalculator(QObject *parent = nullptr);
    ~CollisionCalculator();

signals:

public slots:

private:
};

#endif // COLLISIONCALCULATOR_H