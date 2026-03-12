#pragma once
#ifndef CAMERASWITCHER_H
#define CAMERASWITCHER_H

#include <QObject>

class CameraSwitcher : public QObject {
    Q_OBJECT

public:
    explicit CameraSwitcher(QObject *parent = nullptr);
    ~CameraSwitcher();

signals:

public slots:

private:
};

#endif // CAMERASWITCHER_H