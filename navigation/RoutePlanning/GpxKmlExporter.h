#pragma once
#ifndef GPXKMLEXPORTER_H
#define GPXKMLEXPORTER_H

#include <QObject>

class GpxKmlExporter : public QObject {
    Q_OBJECT

public:
    explicit GpxKmlExporter(QObject *parent = nullptr);
    ~GpxKmlExporter();

signals:

public slots:

private:
};

#endif // GPXKMLEXPORTER_H