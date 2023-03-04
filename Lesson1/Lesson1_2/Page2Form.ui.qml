import QtQuick 2.12
import QtQuick.Controls 2.5
import TriangleArea 1.0

Page {
    width: 600
    height: 400
    title: "Task 2"


    TextField {
        id: pointA_X
        x: 104
        y: 67
        width: 42
        height: 32
        horizontalAlignment: Text.AlignHCenter
        placeholderText: qsTr("X")
    }

    TextField {
        id: pointA_Y
        x: 184
        y: 67
        width: 42
        height: 32
        horizontalAlignment: Text.AlignHCenter
        placeholderText: qsTr("Y")
    }

    TextField {
        id: pointB_X
        x: 104
        y: 123
        width: 42
        height: 32
        horizontalAlignment: Text.AlignHCenter
        placeholderText: qsTr("X")
    }

    TextField {
        id: pointB_Y
        x: 184
        y: 123
        width: 42
        height: 32
        horizontalAlignment: Text.AlignHCenter
        placeholderText: qsTr("Y")
    }

    TextField {
        id: pointC_X
        x: 104
        y: 184
        width: 42
        height: 32
        horizontalAlignment: Text.AlignHCenter
        placeholderText: qsTr("X")
    }

    TextField {
        id: pointC_Y
        x: 184
        y: 184
        width: 42
        height: 32
        horizontalAlignment: Text.AlignHCenter
        placeholderText: qsTr("Y")
    }

    Label {
        id: label
        x: 23
        y: 73
        text: qsTr("PointA")
    }

    Label {
        id: label1
        x: 23
        y: 129
        text: qsTr("PointB")
    }

    Label {
        id: label2
        x: 23
        y: 190
        text: qsTr("PointC")
    }

    TextField {
        id: result
        x: 349
        y: 67
        width: 188
        height: 32
        horizontalAlignment: Text.AlignHCenter
        placeholderText: qsTr("Result")
    }

    Button {
        id: btn_calc
        x: 436
        y: 184
        width: 101
        height: 32
        text: qsTr("Calculate")
        flat: false

     TriangleArea{
         id:area
     }
        Connections {
            target: btn_calc
            onClicked: {
                result.text = area.areaGeronTask3(pointA_X.text, pointA_Y.text,
                                                  pointB_X.text, pointB_Y.text,
                                                  pointC_X.text, pointC_Y.text)
            }
        }
    }
}
