#ifndef DATACHART_H
#define DATACHART_H

#endif // DATACHART_H

#include <QObject>
#include "autoProperty.h"
#include <QVector>
#include <QString>

enum TypeChart{
    PIECHART ,
    LINESERIES,
    SPLINESERIAS
};

class dataChart : public QObject
{
    Q_OBJECT

public:
    dataChart (QObject* parent = nullptr) : QObject(parent) {
        for (float f=0; f<=5; f+=0.1) x.append(f);
    }

private:
    QVector<int> x;
    int y;
    QString color;
    QString nameX;
    QString nameY;
    TypeChart typeChart;

};
