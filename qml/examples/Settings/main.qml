import QtQuick 2.7
import QtQuick.Controls 2.2
import Qt.labs.settings 1.0

Item {
    anchors.fill: parent
    Component.onCompleted: settings.count++

    Settings {
        id: settings
        category: "Sample"
        property int count: 0
    }

    Label {
        anchors.fill: parent
        horizontalAlignment: Text.AlignHCenter
        verticalAlignment: Text.AlignVCenter
        wrapMode: Text.Wrap
        text: "You run this example " + settings.count + " time(s)"
    }
}
