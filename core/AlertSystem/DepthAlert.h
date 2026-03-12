#pragma once
#ifndef DEPTHALERT_H
#define DEPTHALERT_H

#include <QObject>

class DepthAlert : public QObject {
    Q_OBJECT

public:
    explicit DepthAlert(QObject *parent = nullptr);
    ~DepthAlert();

signals:

public slots:

private:
};

#endif // DEPTHALERT_H