#pragma once
#ifndef PGNENCODER_H
#define PGNENCODER_H

#include <QObject>

class PgnEncoder : public QObject {
    Q_OBJECT

public:
    explicit PgnEncoder(QObject *parent = nullptr);
    ~PgnEncoder();

signals:

public slots:

private:
};

#endif // PGNENCODER_H