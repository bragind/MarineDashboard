#pragma once
#ifndef ANCHORWATCHMANAGER_H
#define ANCHORWATCHMANAGER_H

#include <QObject>

class AnchorWatchManager : public QObject {
    Q_OBJECT

public:
    explicit AnchorWatchManager(QObject *parent = nullptr);
    ~AnchorWatchManager();

signals:

public slots:

private:
};

#endif // ANCHORWATCHMANAGER_H