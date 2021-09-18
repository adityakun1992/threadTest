#ifndef THREADER_H
#define THREADER_H

#include <QObject>

class threader : public QObject
{
    Q_OBJECT
public:
    explicit threader(QObject *parent = nullptr);

signals:

public slots:
    void func();
};

#endif // THREADER_H
