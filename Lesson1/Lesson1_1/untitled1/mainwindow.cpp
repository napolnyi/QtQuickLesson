#include "mainwindow.h"
#include "ui_mainwindow.h"
#include <QDebug>
#include <QPropertyAnimation>
#include <QSequentialAnimationGroup>

MainWindow::MainWindow(QWidget *parent)
    : QMainWindow(parent)
    , ui(new Ui::MainWindow)
{
    ui->setupUi(this);
}

MainWindow::~MainWindow()
{
    delete ui;
}

bool MainWindow::verification()
{
    if (ui->txtLog->toPlainText() == login && ui->txtPass->toPlainText() == password){

        qDebug() << "Удачный вход";
        return true;
    }
    else {
        qDebug() << "Неудачный вход";
        return false;
    }

}


void MainWindow::on_btnEnter_clicked()
{
    if (!verification()) {

        QPropertyAnimation anim1(ui->btnEnter, "geometry");
        anim1.setDuration(10000);
        anim1.setEasingCurve(QEasingCurve::Linear);
        anim1.setStartValue(QRect(140,210,231,31));
        anim1.setEndValue(QRect(170,250,231,31));


        QPropertyAnimation anim2(ui->btnEnter, "geometry");
        anim2.setDuration(10000);
        anim2.setEasingCurve(QEasingCurve::Linear);
        anim2.setStartValue(QRect(170,250,231,31));
        anim2.setEndValue(QRect(140,210,231,31));


        QSequentialAnimationGroup group;
        group.addAnimation(&anim1);
        group.addAnimation(&anim2);

        group.start();

    }
    else{

        ui->txtLog->setVisible(false);
        ui->txtPass->setVisible(false);
        ui->btnEnter->setVisible(false);

    }
}
