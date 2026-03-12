#pragma once
#ifndef DEPTHSOUNDER_H
#define DEPTHSOUNDER_H

#include <QObject>

class DepthSounder : public QObject {
    Q_OBJECT

public:
    explicit DepthSounder(QObject *parent = nullptr);
    ~DepthSounder();

signals:

public slots:

private:
};

#endif // DEPTHSOUNDER_H