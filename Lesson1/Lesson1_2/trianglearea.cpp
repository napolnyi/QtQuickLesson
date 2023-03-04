#include "trianglearea.h"
#include <QtMath>
#include <QDebug>


TriangleArea::TriangleArea(QObject *parent) :  QObject(parent)
{

}

float TriangleArea::areaGeronTask2(float sideA, float sideB, float sideC)
{
    float p = (sideA + sideB + sideC)/2;
    return qSqrt(p*(p-sideA)*(p-sideB)*(p-sideC));

}


float TriangleArea::areaGeronTask3(int x1, int y1, int x2, int y2, int x3, int y3)
{
    float sideA = qSqrt(qPow(x2-x1,2)+qPow(y2-y1,2));

    qDebug() << "sideA" << sideA;
    float sideB = qSqrt(qPow(x3-x1,2)+qPow(y3-y1,2));
    qDebug() << "sideB" << sideB;
    float sideC = qSqrt(qPow(x3-x2,2)+qPow(y3-y2,2));
    qDebug() << "sideC" << sideC;
    return areaGeronTask2(sideA, sideB, sideC);
}
