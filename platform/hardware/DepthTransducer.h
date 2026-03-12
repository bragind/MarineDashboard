#pragma once
#ifndef DEPTHTRANSDUCER_H
#define DEPTHTRANSDUCER_H

#include <QObject>

class DepthTransducer : public QObject {
    Q_OBJECT

public:
    explicit DepthTransducer(QObject *parent = nullptr);
    ~DepthTransducer();

signals:

public slots:

private:
};

#endif // DEPTHTRANSDUCER_H