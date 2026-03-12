#pragma once
#ifndef NMEASENTENCEVALIDATOR_H
#define NMEASENTENCEVALIDATOR_H

#include <QObject>

class NmeaSentenceValidator : public QObject {
    Q_OBJECT

public:
    explicit NmeaSentenceValidator(QObject *parent = nullptr);
    ~NmeaSentenceValidator();

signals:

public slots:

private:
};

#endif // NMEASENTENCEVALIDATOR_H