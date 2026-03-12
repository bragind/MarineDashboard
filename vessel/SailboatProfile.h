#pragma once
#ifndef SAILBOATPROFILE_H
#define SAILBOATPROFILE_H

#include <QObject>

class SailboatProfile : public QObject {
    Q_OBJECT

public:
    explicit SailboatProfile(QObject *parent = nullptr);
    ~SailboatProfile();

signals:

public slots:

private:
};

#endif // SAILBOATPROFILE_H