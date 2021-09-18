#ifndef APPLICATION_H
#define APPLICATION_H

#include <QWidget>
#include <sapcore.h>
#include <threader.h>
#include <QThread>

namespace Ui {
class Application;
}

class Application : public QWidget
{
    Q_OBJECT

public:
    explicit Application(QWidget *parent = 0);
    ~Application();

private:
    QThread *thread;
    threader *t;
    Ui::Application *ui;

signals:
    void clickerSignal();

private slots:
    void emitterFunc(bool);
};

#endif // APPLICATION_H
