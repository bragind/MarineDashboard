#pragma once
#ifndef ANCHORWATCHALERT_H
#define ANCHORWATCHALERT_H

#include <QObject>

class AnchorWatchAlert : public QObject {
    Q_OBJECT

public:
    explicit AnchorWatchAlert(QObject *parent = nullptr);
    ~AnchorWatchAlert();

signals:

public slots:

private:
};

#endif // ANCHORWATCHALERT_H