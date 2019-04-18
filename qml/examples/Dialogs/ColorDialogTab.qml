import QtQuick 2.12
import QtQuick.Controls 2.5
import QtQuick.Dialogs 1.3

Item {
    anchors.fill: parent

    Rectangle {
        id: rect
        anchors.fill: parent
    }

    Button {
        anchors.centerIn: parent
        text: "Show dialog"
        onClicked: dialog.visible = true
    }

    ColorDialog {
        id: dialog
        onAccepted: rect.color = color
    }
}
