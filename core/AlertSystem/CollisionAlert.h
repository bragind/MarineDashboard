#pragma once
#ifndef COLLISIONALERT_H
#define COLLISIONALERT_H

#include <QObject>

class CollisionAlert : public QObject {
    Q_OBJECT

public:
    explicit CollisionAlert(QObject *parent = nullptr);
    ~CollisionAlert();

signals:

public slots:

private:
};

#endif // COLLISIONALERT_H