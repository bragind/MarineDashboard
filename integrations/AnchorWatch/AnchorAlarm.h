#pragma once
#ifndef ANCHORALARM_H
#define ANCHORALARM_H

#include <QObject>

class AnchorAlarm : public QObject {
    Q_OBJECT

public:
    explicit AnchorAlarm(QObject *parent = nullptr);
    ~AnchorAlarm();

signals:

public slots:

private:
};

#endif // ANCHORALARM_H