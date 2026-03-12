#pragma once
#ifndef NMEA2000DECODER_H
#define NMEA2000DECODER_H

#include <QObject>

class Nmea2000Decoder : public QObject {
    Q_OBJECT

public:
    explicit Nmea2000Decoder(QObject *parent = nullptr);
    ~Nmea2000Decoder();

signals:

public slots:

private:
};

#endif // NMEA2000DECODER_H