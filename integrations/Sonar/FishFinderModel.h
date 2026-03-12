#pragma once
#ifndef FISHFINDERMODEL_H
#define FISHFINDERMODEL_H

#include <QObject>

class FishFinderModel : public QObject {
    Q_OBJECT

public:
    explicit FishFinderModel(QObject *parent = nullptr);
    ~FishFinderModel();

signals:

public slots:

private:
};

#endif // FISHFINDERMODEL_H