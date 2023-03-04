import QtQuick 2.12
import QtQuick.Controls 2.5

Page {
    width: 600
    height: 400

    title: qsTr("Home")

    Label {
        width: 142
        height: 26
        text: qsTr("Enter number task")
        anchors.verticalCenterOffset: -137
        anchors.horizontalCenterOffset: -216
        anchors.centerIn: parent
    }
}
