#pragma once
#ifndef CURRENTPREDICTOR_H
#define CURRENTPREDICTOR_H

#include <QObject>

class CurrentPredictor : public QObject {
    Q_OBJECT

public:
    explicit CurrentPredictor(QObject *parent = nullptr);
    ~CurrentPredictor();

signals:

public slots:

private:
};

#endif // CURRENTPREDICTOR_H