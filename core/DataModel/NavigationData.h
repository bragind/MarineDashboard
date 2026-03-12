#pragma once
#ifndef NAVIGATIONDATA_H
#define NAVIGATIONDATA_H

#include <QObject>

class NavigationData : public QObject {
    Q_OBJECT

public:
    explicit NavigationData(QObject *parent = nullptr);
    ~NavigationData();

signals:

public slots:

private:
};

#endif // NAVIGATIONDATA_H