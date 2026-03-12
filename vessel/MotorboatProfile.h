#pragma once
#ifndef MOTORBOATPROFILE_H
#define MOTORBOATPROFILE_H

#include <QObject>

class MotorboatProfile : public QObject {
    Q_OBJECT

public:
    explicit MotorboatProfile(QObject *parent = nullptr);
    ~MotorboatProfile();

signals:

public slots:

private:
};

#endif // MOTORBOATPROFILE_H