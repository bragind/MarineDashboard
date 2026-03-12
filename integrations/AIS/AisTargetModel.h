#pragma once
#ifndef AISTARGETMODEL_H
#define AISTARGETMODEL_H

#include <QObject>

class AisTargetModel : public QObject {
    Q_OBJECT

public:
    explicit AisTargetModel(QObject *parent = nullptr);
    ~AisTargetModel();

signals:

public slots:

private:
};

#endif // AISTARGETMODEL_H