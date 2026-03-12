#pragma once
#ifndef ENVIRONMENTALDATA_H
#define ENVIRONMENTALDATA_H

#include <QObject>

class EnvironmentalData : public QObject {
    Q_OBJECT

public:
    explicit EnvironmentalData(QObject *parent = nullptr);
    ~EnvironmentalData();

signals:

public slots:

private:
};

#endif // ENVIRONMENTALDATA_H