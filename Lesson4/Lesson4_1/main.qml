import QtQuick 2.12
import QtQuick.Window 2.12
import QtCharts 2.3

Window {
    width: 640
    height: 480
    visible: true
    title: qsTr("Hello World")

    Item {
        anchors.fill: parent
        ChartView{
            title: "Line"
            anchors.fill: parent
            LineSeries{
                XYPoint {x:0; y:0}
                XYPoint {x:1.1; y:2.1}
            }
        }
     }
}
