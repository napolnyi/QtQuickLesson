import QtQuick 2.12
import QtQuick.Window 2.12
import QtQuick.Controls 2.15

Window {
    width: 540
    height: 620
    visible: true
    title: qsTr("Registration form")

    GroupBox {
        id: groupBox
        x: 22
        y: 10
        width: 240
        height: 555
        font.bold: true
        font.pointSize: 10
        title: qsTr("About me")

        TextField {
            id: txtName
            x: 0
            y: 10
            font.pointSize: 10
            placeholderText: qsTr("Name")
        }

        TextField {
            id: txtPatronymic
            x: 0
            y: 69
            font.pointSize: 10
            placeholderText: qsTr("Patronymic")
        }

        TextField {
            id: txtSurname
            x: 0
            y: 128
            horizontalAlignment: Text.AlignLeft
            font.pointSize: 10
            placeholderText: qsTr("Surname")
        }

        RadioButton {
            id: rdBtnMan
            x: 0
            y: 191
            text: qsTr("Man")
        }

        RadioButton {
            id: rdBtnWoman
            x: 105
            y: 191
            text: qsTr("Woman")
        }

        ComboBox {
            id: cmbEducation
            x: 0
            y: 270
            width: 200
            height: 37
            model:  [qsTr("Higher"),qsTr("Secondary"),qsTr("Primary")]
        }

        ToolSeparator {
            id: toolSeparator
            x: 86
            y: 191
        }

        Label {
            id: label
            x: 86
            y: 322
            width: 35
            height: 17
            text: qsTr("Age")
        }

        Label {
            id: label1
            x: 61
            y: 237
            text: qsTr("Education")
        }

        SpinBox {
            id: spbAge
            x: 0
            y: 352
            width: 200
            height: 40
            from: 18
            value: 18
        }

        TextField {
            id: txtCity
            x: 4
            y: 416
            placeholderText: qsTr("City")
        }

        TextField {
            id: txtHobby
            x: 4
            y: 471
            placeholderText: qsTr("Hobby")
        }
    }

    GroupBox {
        id: groupBox1
        x: 280
        y: 10
        width: 240
        height: 263
        font.bold: true
        font.pointSize: 10
        title: qsTr("Search parameters")

        RangeSlider {
            id: rngSliderAgeFind
            x: 8
            y: 85
            font.pointSize: 10
            stepSize: 1
            to: 99
            from: 18
            second.value: 99
            first.value: 18
            first.onMoved: {
                lblAgeMin.text = rngSliderAgeFind.first.value.toFixed(0)
            }
            second.onMoved: {
                lblAgeMax.text = rngSliderAgeFind.second.value.toFixed(0)
            }
        }

        RadioButton {
            id: rdBtnManFind
            x: 8
            y: 11
            text: qsTr("Man")
        }

        ToolSeparator {
            id: toolSeparator1
            x: 88
            y: 11
        }

        RadioButton {
            id: rdBtnWomanFind
            x: 113
            y: 8
            text: qsTr("Woman")
        }

        Label {
            id: label2
            x: 88
            y: 57
            width: 35
            height: 22
            text: qsTr("Age")
        }

        Label {
            id: lblAgeMin
            x: 19
            y: 130
            width: 27
            height: 23
            text: qsTr("18")
        }

        Label {
            id: lblAgeMax
            x: 181
            y: 128
            width: 35
            height: 26
            text: qsTr("99")
        }
    }

    Button {
        id: button
        x: 150
        y: 571
        width: 240
        height: 40
        text: qsTr("Registration")
        font.bold: true
        font.pointSize: 10

        Connections {
            target: button
            onClicked: {
                         console.log("About me----------------\n",
                                     "Name:",txtName.text,"\t","Patronymic:",txtPatronymic.text,"\t","Surname:",txtSurname.text,"\n",
                                     rdBtnMan.checked == true ? "Sex: Man\n" : "Sex: Woman\n",
                                     "Age:",spbAge.value,"\n",
                                     "Education:",cmbEducation.currentText,"\n",
                                     "Hobby:",txtHobby.text,"\n",
                                     "City:",txtCity.text,"\n",
                                     "About me:",textArea.text,"\n\n",
                                     "Search parameters--------\n",
                                     rdBtnManFind.checked == true ? "Sex: Man\n" : "Sex: Woman\n",
                                     "Age from:",rngSliderAgeFind.first.value.toFixed(0),"\n",
                                     "Age before:",rngSliderAgeFind.second.value.toFixed(0),"\n",
                                     "Education:",cmbEducationFind.currentText,"\n")
            }
        }
    }

    ComboBox {
        id: cmbEducationFind
        x: 300
        y: 203
        width: 200
        height: 37
        font.bold: true
        font.pointSize: 10
        model: [qsTr("Higher"),qsTr("Secondary"),qsTr("Primary")]
    }

    Label {
        id: label3
        x: 369
        y: 179
        text: qsTr("Education")
        font.bold: true
        font.pointSize: 10
    }

    TextArea {
        id: textArea
        x: 281
        y: 293
        width: 240
        height: 266
        text: "Write about yourself"
        horizontalAlignment: Text.AlignHCenter
        verticalAlignment: Text.AlignVCenter
        clip: false
        font.bold: true
        font.pointSize: 10
        placeholderText: qsTr("")

    }


}


