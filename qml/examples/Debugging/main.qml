import QtQuick 2.12
import QtQuick.Controls 1.4

Item {
    anchors.fill: parent

    Rect {
        anchors.top: parent.top
        anchors.left: parent.left
        color: "green"
        objectName: "green rectangle"
    }

    Rect {
        anchors.bottom: parent.bottom
        anchors.right: parent.right
        color: "red"
        objectName: "red rectangle"
    }

    Button {
        anchors.centerIn: parent
        text: "Print current time"
        onClicked: {
            console.log(Qt.formatTime(new Date(), Qt.DefaultLocaleLongDate))
        }
    }
}
