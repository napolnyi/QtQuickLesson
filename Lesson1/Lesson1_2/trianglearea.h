#ifndef TRIANGLEAREA_H
#define TRIANGLEAREA_H

#include <QObject>

class TriangleArea : public QObject
{
    Q_OBJECT
public:
    explicit TriangleArea(QObject *parent = nullptr);

    Q_INVOKABLE float areaGeronTask2(float sideA, float sideB, float sideC);
    Q_INVOKABLE float areaGeronTask3(int x1, int y1, int x2, int y2, int x3, int y3);


private:



};

#endif // TRIANGLEAREA_H
