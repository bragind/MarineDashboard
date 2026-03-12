#pragma once
#ifndef NMEATYPES_H
#define NMEATYPES_H

#include <QObject>

class NmeaTypes : public QObject {
    Q_OBJECT

public:
    explicit NmeaTypes(QObject *parent = nullptr);
    ~NmeaTypes();

signals:

public slots:

private:
};

#endif // NMEATYPES_H