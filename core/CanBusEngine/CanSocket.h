#pragma once
#ifndef CANSOCKET_H
#define CANSOCKET_H

#include <QObject>

class CanSocket : public QObject {
    Q_OBJECT

public:
    explicit CanSocket(QObject *parent = nullptr);
    ~CanSocket();

signals:

public slots:

private:
};

#endif // CANSOCKET_H