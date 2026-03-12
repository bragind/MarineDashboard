#pragma once
#ifndef PGNDECODER_H
#define PGNDECODER_H

#include <QObject>

class PgnDecoder : public QObject {
    Q_OBJECT

public:
    explicit PgnDecoder(QObject *parent = nullptr);
    ~PgnDecoder();

signals:

public slots:

private:
};

#endif // PGNDECODER_H