import QtQuick 2.12
import QtQuick.Window 2.12
import QtQuick.Controls 2.12

Window {
    width: 480
    height: 590
    visible: true
    title: qsTr("Lesson3 Task3")

    Item{
        anchors.fill: parent
        ListModel{
            id: books
            ListElement{
                pathImage: "c:/Books/Image/book1"
                title: "book1"
                genre: "detective"
                author: "author1"
            }
            ListElement{
                pathImage: "c:/Books/Image/book2"
                title: "book2"
                genre: "poetry"
                author: "author2"
            }
            ListElement{
                pathImage: "c:/Books/Image/book3"
                title: "book3"
                genre: "poetry"
                author: "author3"
            }
            ListElement{
                pathImage: "c:/Books/Image/book4"
                title: "book4"
                genre: "classic"
                author: "author4"
            }
            ListElement{
                pathImage: "c:/Books/mage/book5"
                title: "book5"
                genre: "fantastic"
                author: "author5"
            }
            ListElement{
                pathImage: "c:/Books/Image/book6"
                title: "book6"
                genre: "fantastic"
                author: "author6"
            }
            ListElement{
                pathImage: "c:/Books/Image/book7"
                title: "book7"
                genre: "detective"
                author: "author7"
            }
        }
        ListView{
            id: list
            anchors.fill: parent
            model: books
            spacing: 1
            header: Rectangle{
                width: parent.width
                height: 30
                color: "darkblue"
                Text {
                    anchors.centerIn: parent
                    text: qsTr("Library of 7 books")
                    color: "white"
                }
            }
            footer: Rectangle{
                width: parent.width
                height: 30
                color: "lightblue"
                Text {
                    anchors.centerIn: parent
                    text: qsTr("made in the USSR")
                    color: "blue"
                }
            }

            section.delegate: Rectangle{
                width: parent.width

                height:  20
                color:  "lightblue"
                Text{
                    text: section
                    anchors.horizontalCenter: parent.horizontalCenter
                    color: "darkblue"
                    font.weight: Font.Bold
                }
            }
            section.property: "genre"

            section.labelPositioning:ViewSection.InlineLabels


            delegate: Rectangle{
                width: list.width
                height: 60
                radius: 5
                border.width: 1
                border.color: "darkgray"
                color: "lightgray"

                Column{
                    anchors.fill: parent
                    Row{
                        anchors.horizontalCenter: parent.horizontalCenter
                        Text { text: "Название книги:"; font.weight: Font.Bold }
                        Text { text: title }
                        spacing: 20
                    }
                    Row{
                        anchors.horizontalCenter: parent.horizontalCenter
                        Text { text: "Автор:"; font.weight: Font.Bold }
                        Text { text: author }
                        spacing: 20
                    }
                    Row{
                        anchors.horizontalCenter: parent.horizontalCenter
                        Text { text: "Жанр:"; font.weight: Font.Bold }
                        Text { text: genre }
                        spacing: 20
                    }
                    Row{
                        anchors.horizontalCenter: parent.horizontalCenter
                        Text { text: "Путь к обложке:"; font.weight: Font.Bold }
                        Text { text: pathImage }
                        spacing: 20
                    }
                }
            }

        }
    }
}
