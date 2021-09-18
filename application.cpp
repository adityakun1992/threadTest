#include "application.h"
#include "ui_application.h"

Application::Application(QWidget *parent) :
    QWidget(parent),
    ui(new Ui::Application)
{
    ui->setupUi(this);
    // ADD USER CODE HERE
    t = new threader();
    thread = new QThread(this);
    connect(ui->pushButtonClose, SIGNAL(clicked(bool)), this, SLOT(emitterFunc(bool)));
    connect(this, SIGNAL(clickerSignal()), t, SLOT(func()));
    t->moveToThread(thread);
    thread->start();
}

void Application::emitterFunc(bool)
{
    emit clickerSignal();
}

Application::~Application()
{
    delete ui;
}
