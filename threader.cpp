#include "threader.h"
#include <QDebug>
threader::threader(QObject *parent) : QObject(parent)
{

}

void threader::func()
{
    qDebug()<<"Clicked";
}
