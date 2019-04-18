import QtQuick 2.12
import QtQuick.Window 2.12

Rectangle {
    id: player

    width: 20 * Screen.logicalPixelDensity
    height: width

    radius: width / 2
    color: "#006325"

    property double speed: 2 * Screen.logicalPixelDensity
}
