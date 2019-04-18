import QtQuick 2.12
import QtMultimedia 5.12
import QtQuick.Window 2.12

Item {
    anchors.fill: parent
    property bool torchEnabled: false

    // The Torch component isn't working on Android, so I'm using Camera instead
    // However, this function remains unstable and often leads to crash app

    /*Torch {
        enabled: torchEnabled
        power: 100
    }*/

    Camera {
        flash.mode: (torchEnabled) ?
                        Camera.FlashVideoLight :
                        Camera.FlashOff
    }

    Rectangle {
        anchors.centerIn: parent
        width: Math.min(parent.width, parent.height) * 0.7
        height: width
        radius: width / 2
        color: (torchEnabled) ? "#006224" : "#ffffff"
        border.color: "#80c342"
        border.width: 10
    }

    MouseArea {
        anchors.fill: parent
        onClicked: torchEnabled = !torchEnabled
    }
}
