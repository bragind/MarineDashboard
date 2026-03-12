#pragma once
#ifndef TIDETABLE_H
#define TIDETABLE_H

#include <QObject>

class TideTable : public QObject {
    Q_OBJECT

public:
    explicit TideTable(QObject *parent = nullptr);
    ~TideTable();

signals:

public slots:

private:
};

#endif // TIDETABLE_H