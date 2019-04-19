import QtQuick 2.12
import QtQuick.Controls 2.5
import QtQuick.Layouts 1.12

SwipeScreen {
    onSelected: emailTextField.forceActiveFocus()

    ColumnLayout {
        anchors.centerIn: parent

        RowLayout {
            Label { text: "Email" }
            TextField {
                id: emailTextField
                Layout.fillWidth: true
            }
        }

        Button {
            Layout.fillWidth: true
            text: "Send instructions"
        }
    }
}
