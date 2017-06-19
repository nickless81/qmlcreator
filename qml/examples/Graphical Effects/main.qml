import QtQuick 2.7
import QtQuick.Controls 2.2

TabView {
    anchors.fill: parent

    Tab {
        title: "Brightness contrast"
        BrightnessContrastTab {}
    }

    Tab {
        title: "Desaturate"
        DesaturateTab {}
    }

    Tab {
        title: "Directional Blur"
        DirectionalBlurTab {}
    }
}
