import QtQuick 2.7
import QtQuick.Controls 2.2

TabView {
    anchors.fill: parent

    Tab {
        title: "Color"
        ColorDialogTab {}
    }

    Tab {
        title: "Message"
        MessageDialogTab {}
    }
}
