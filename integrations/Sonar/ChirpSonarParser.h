#pragma once
#ifndef CHIRPSONARPARSER_H
#define CHIRPSONARPARSER_H

#include <QObject>

class ChirpSonarParser : public QObject {
    Q_OBJECT

public:
    explicit ChirpSonarParser(QObject *parent = nullptr);
    ~ChirpSonarParser();

signals:

public slots:

private:
};

#endif // CHIRPSONARPARSER_H