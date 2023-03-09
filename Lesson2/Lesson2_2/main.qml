import QtQuick 2.15
import QtQuick.Window 2.15

Window {
    width: 640
    height: 480
    visible: true
    title: qsTr("Lesson2 Task2")

    Rectangle{
        id:rect
        height: 200
        width: 200
        anchors.centerIn: parent
        color: Qt.rgba(Math.random(),Math.random(),Math.random(),1)
        MouseArea{
            anchors.fill: parent
            hoverEnabled: true
            onClicked: {

                rect.color = Qt.rgba(Math.random(),Math.random(),Math.random(),1)
            }
            onDoubleClicked: {
               anim.start()
               console.log("Double Clicked")
            }
        }
    }
    PropertyAnimation {
        id: anim
        target: rect
        property: "radius"
        duration: 1000
        to: 500

    }
}
