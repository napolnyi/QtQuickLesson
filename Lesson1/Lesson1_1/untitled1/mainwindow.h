#ifndef MAINWINDOW_H
#define MAINWINDOW_H

#include <QMainWindow>

QT_BEGIN_NAMESPACE
namespace Ui { class MainWindow; }
QT_END_NAMESPACE

class MainWindow : public QMainWindow
{
    Q_OBJECT

public:
    MainWindow(QWidget *parent = nullptr);
    ~MainWindow();

    bool verification();


private slots:
    void on_btnEnter_clicked();

private:
    Ui::MainWindow *ui;
    QString login = "login";
    QString password = "password";
};
#endif // MAINWINDOW_H
