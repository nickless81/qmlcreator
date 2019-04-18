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

    DirectionalBlur {
        id: effect
        anchors.fill: image
        source: image
        transparentBorder: true
        angle: angleSlider.value
        length: lengthSlider.value
        samples: samplesSlider.value
    }

    GridLayout {
        anchors.left: parent.left
        anchors.right: parent.right
        anchors.bottom: parent.bottom
        anchors.margins: columnSpacing
        columns: 2

        Label { text: "Angle" }
        Slider {
            id: angleSlider
            Layout.fillWidth: true
            from: 0
            to: 360
            value: 180
        }

        Label { text: "Length" }
        Slider {
            id: lengthSlider
            Layout.fillWidth: true
            from: 0
            to: 100
            value: 100
        }

        Label { text: "Samples" }
        Slider {
            id: samplesSlider
            Layout.fillWidth: true
            from: 0
            to: 30
            value: 30
        }
    }
}
