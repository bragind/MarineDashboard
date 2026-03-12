#pragma once
#ifndef GENETICALGORITHM_H
#define GENETICALGORITHM_H

#include <QObject>

class GeneticAlgorithm : public QObject {
    Q_OBJECT

public:
    explicit GeneticAlgorithm(QObject *parent = nullptr);
    ~GeneticAlgorithm();

signals:

public slots:

private:
};

#endif // GENETICALGORITHM_H