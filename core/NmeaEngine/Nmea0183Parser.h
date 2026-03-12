#pragma once
#ifndef NMEA0183PARSER_H
#define NMEA0183PARSER_H

#include <QObject>

class Nmea0183Parser : public QObject {
    Q_OBJECT

public:
    explicit Nmea0183Parser(QObject *parent = nullptr);
    ~Nmea0183Parser();

signals:

public slots:

private:
};

#endif // NMEA0183PARSER_H