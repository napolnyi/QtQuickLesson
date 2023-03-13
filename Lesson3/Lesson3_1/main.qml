import QtQuick 2.12
import QtQuick.Window 2.12
import QtQuick.Controls 2.12

Window {
    width: 640
    height: 480
    visible: true
    title: qsTr("Lesson3 Task1,2")

    TextField {
        id: txt_login
        x: 214
        y: 137
        placeholderText: qsTr("login")
        opacity: 1
        states: [
            State {
                name: "txt_login_failed"
                PropertyChanges {target: txt_login; color: "red"}
            },
            State {
                name: "txt_login_completed"
                PropertyChanges {target: txt_login; opacity: 0}
            }
        ]
        transitions: [
            Transition {
                to: "txt_login_completed"
                PropertyAnimation {property: "opacity"; duration: 1000}
            }
        ]
    }

    TextField {
        id: txt_password
        x: 214
        y: 205
        placeholderText: qsTr("password")
        states: [
            State {
                name: "txt_password_failed"
                PropertyChanges {target: txt_password; color: "red"}
            },

            State {
                name: "txt_password_completed"
                PropertyChanges { target: txt_password; opacity: 0 }
            }
        ]
        transitions: [
            Transition {
                to: "txt_password_completed"
                PropertyAnimation {property: "opacity"; duration: 1000}
            }
        ]
    }

    Label {
        id: lbl_failed
        x: 173
        y: 339
        width: 283
        height: 55
        opacity: 0
        color: "#f90f0f"
        text: qsTr("the username or password is not entered correctly")
        horizontalAlignment: Text.AlignHCenter
        states: [
            State {
                name: "lbl_failed_failed"
                PropertyChanges { target: lbl_failed; opacity: 1 }
            },
            State {
                name: "lbl_failed_completed"
                PropertyChanges { target: lbl_failed; opacity: 0 }
            }
        ]
        transitions: [
            Transition {

                to: "lbl_failed_failed"
                PropertyAnimation {property: "opacity"; duration: 1000}

            }
        ]
    }

    Button {
        id: btn_registration
        x: 214
        y: 276
        width: 200
        height: 40
        text: qsTr("Authorization")
        display: AbstractButton.TextBesideIcon
        states: [
            State {
                name: "btn_registration_completed"
                PropertyChanges {target: btn_registration; opacity: 0}
            }
        ]

        Connections {
            target: btn_registration
            onClicked: {
                if (txt_login.text == "login" && txt_password.text == "password"){

                    lbl_failed.state = "lbl_failed_completed"
                    btn_registration.state = "btn_registration_completed"
                    txt_find.state = "txt_find_completed"
                    btn_find.state = "btn_find_completed"

                    txt_login.state = "txt_login_completed"
                    txt_password.state = "txt_password_completed"

                }
                else {
                    lbl_failed.state = "lbl_failed_failed"
                    txt_login.state = "txt_login_failed"
                    txt_password.state = "txt_password_failed"
                }

            }
        }
    }

    TextField {
        id: txt_find
        x: 100
        y: 77
        width: 375
        height: 37
        placeholderText: qsTr("Find.....")
        opacity: 0
        states: [
            State {
                name: "txt_find_completed"
                PropertyChanges {target: txt_find; opacity: 1}
            },
            State {
                name: "txt_find_result"
                PropertyChanges {target: txt_find; opacity: 0}

            }
        ]
        transitions: [
            Transition {
                to: "txt_find_completed"
                PropertyAnimation {property: "opacity"; duration: 2000}
            },
            Transition {
                to: "txt_find_result"
                PropertyAnimation {property: "opacity"; duration: 2000}
            }
        ]
    }

    Button {
        id: btn_find
        x: 503
        y: 76
        width: 100
        height: 38
        text: qsTr("Find")
        opacity: 0
        states: [
            State {
                name: "btn_find_completed"
                PropertyChanges {target: btn_find ; opacity: 1 }
            },
            State {
                name: "btn_find_result"
                PropertyChanges {target: btn_find; opacity: 0}

            }
        ]
        transitions: [
            Transition {
                to: "btn_find_completed"
                PropertyAnimation {property: "opacity"; duration: 2000}
            },
            Transition {
                to: "btn_find_result"
                PropertyAnimation {property: "opacity"; duration: 2000}
            }
        ]
        onClicked: {
            indicator.running = true
            animBusy.start()
            btn_find.state = "btn_find_result"
            txt_find.state = "txt_find_result"
            txt_result_find.state = "txt_result_find_visible"
        }
    }
    BusyIndicator {
        id:indicator
        x: 28
        y: 100
        running: false
    }
     PropertyAnimation {
         id: animBusy
         target: indicator
         property: "running"
         duration: 2000
         to: false
     }

     TextArea {
         id: txt_result_find
         x: 153
         y: 183
         width: 332
         height: 162
         opacity: 0
         visible: false
         horizontalAlignment: Text.AlignHCenter
         font.bold: true
         font.pointSize: 10
         placeholderText: qsTr("these are the search results")
         states: [
             State {
                 name: "txt_result_find_visible"
                 PropertyChanges {target: txt_result_find; visible: true; opacity: 1  }
             }
         ]
         transitions: [
             Transition {
                 to: "txt_result_find_visible"
                 PropertyAnimation {property: "opacity"; duration: 5000}
             }
         ]
     }

}

