import QtQuick 2.12
import QtQuick.Controls 2.5
import QtQuick.Dialogs 1.3

Item {
    anchors.fill: parent

    Button {
        anchors.centerIn: parent
        text: "Show dialog"
        onClicked: dialog.visible = true
    }

    MessageDialog {
        id: dialog
        title: "Breaking News!"
        text: "QML Creator is now available on App Store!"
    }
}
