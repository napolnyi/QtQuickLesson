import QtQuick 2.12
import QtQuick.Controls 2.5
import TriangleArea 1.0

Page {
    width: 600
    height: 400
    title: "Task 1"


    TextField {
        id: lgh_sideA
        x: 60
        y: 54
        width: 172
        height: 32
        horizontalAlignment: Text.AlignHCenter
        placeholderText: qsTr("Side A length")
    }

    TextField {
        id: lgh_sideB
        x: 60
        y: 116
        width: 172
        height: 32
        horizontalAlignment: Text.AlignHCenter
        placeholderText: qsTr("Side B length")
    }

    TextField {
        id: lgh_sideC
        x: 60
        y: 176
        width: 172
        height: 32
        horizontalAlignment: Text.AlignHCenter
        placeholderText: qsTr("Side C length")
    }

    TextField {
        id: result
        x: 330
        y: 54
        width: 203
        height: 32
        horizontalAlignment: Text.AlignHCenter
        placeholderText: qsTr("Result")
    }

    Button {
        id: btn_calc
        x: 436
        y: 181
        width: 97
        height: 38
        text: qsTr("Сalculate")
    TriangleArea{
        id:area
    }


        Connections {
            target: btn_calc
            onClicked: {
                result.text = area.areaGeronTask2(lgh_sideA.text, lgh_sideB.text, lgh_sideC.text)
            }
        }
    }
}
