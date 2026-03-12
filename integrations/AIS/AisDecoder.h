#pragma once
#ifndef AISDECODER_H
#define AISDECODER_H

#include <QObject>

class AisDecoder : public QObject {
    Q_OBJECT

public:
    explicit AisDecoder(QObject *parent = nullptr);
    ~AisDecoder();

signals:

public slots:

private:
};

#endif // AISDECODER_H