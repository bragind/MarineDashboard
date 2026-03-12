#pragma once
#ifndef APBSENTENCEBUILDER_H
#define APBSENTENCEBUILDER_H

#include <QObject>

class ApbSentenceBuilder : public QObject {
    Q_OBJECT

public:
    explicit ApbSentenceBuilder(QObject *parent = nullptr);
    ~ApbSentenceBuilder();

signals:

public slots:

private:
};

#endif // APBSENTENCEBUILDER_H