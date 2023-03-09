import QtQuick 2.15
import QtQuick.Window 2.15

Window {
    width: 640
    height: 480
    visible: true
    title: qsTr("Lesson2 Task2, Task3")
    property int rotationValue: 0


    Rectangle{
        id:rect
        height: 200
        width: 200
        anchors.centerIn: parent
        color: Qt.rgba(Math.random(),Math.random(),Math.random(),1)
        rotation: rotationValue


        MouseArea{
            anchors.fill: parent
            hoverEnabled: true
            acceptedButtons: Qt.LeftButton | Qt.RightButton
            onClicked: {

                if (mouse.button == Qt.LeftButton) {
                    animColor.to =  Qt.rgba(Math.random(),Math.random(),Math.random(),1)
                    animColor.start()

                }

                if (mouse.button == Qt.RightButton){

                    animRotation.start()
                    rotationValue = rect.rotation

                }
            }
            onDoubleClicked: {

               animCircle.start()
               console.log("Double Clicked")
            }

        }
    }
    PropertyAnimation {
        id: animCircle
        target: rect
        property: "radius"
        duration: 1000
        to: 1000
    }
    PropertyAnimation {
        id: animColor
        target: rect
        property: "color"
        duration: 1000
    }
    PropertyAnimation{
        id:animRotation
        target: rect
        property: "rotation"
        duration: 5000
        from: rotationValue
        to: rotationValue + 360

    }
}
