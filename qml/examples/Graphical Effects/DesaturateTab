import QtQuick 2.12
import QtQuick.Controls 2.5
import QtQuick.Layouts 1.12
import QtGraphicalEffects 1.0

Item {
    anchors.fill: parent

    Image {
        id: image
        width: Math.min(parent.width, parent.height) * 0.7
        height: width
        anchors.centerIn: parent
        source: "qrc:/resources/images/icon512.png"
    }

    Desaturate {
        id: effect
        anchors.fill: image
        source: image
        desaturation: desaturationSlider.value
    }

    GridLayout {
        anchors.left: parent.left
        anchors.right: parent.right
        anchors.bottom: parent.bottom
        anchors.margins: columnSpacing
        columns: 2

        Label { text: "Desaturation" }
        Slider {
            id: desaturationSlider
            Layout.fillWidth: true
            from: 0
            to: 1
            value: 1
        }
    }
}
