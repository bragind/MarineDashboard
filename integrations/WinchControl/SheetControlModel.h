#pragma once
#ifndef SHEETCONTROLMODEL_H
#define SHEETCONTROLMODEL_H

#include <QObject>

class SheetControlModel : public QObject {
    Q_OBJECT

public:
    explicit SheetControlModel(QObject *parent = nullptr);
    ~SheetControlModel();

signals:

public slots:

private:
};

#endif // SHEETCONTROLMODEL_H