import QtQuick 2.12
import QtQuick.Window 2.12

Item {
    anchors.fill: parent

    property int rectSize: 14 * Screen.logicalPixelDensity

    Grid {
        anchors.centerIn: parent
        columns: parent.width / rectSize
        rows: parent.height / rectSize

        Repeater {
            model: parent.columns * parent.rows
            delegate: ColorRect {
                width: rectSize
                height: rectSize
            }
        }
    }
}
