import QtQuick 2.0
import QtQuick.Controls 2.13

ComboBox {
    id: root
    implicitHeight: 30

    palette.windowText: approot.palette.text
    palette.buttonText: approot.palette.text

    Connections {
        target: approot

        onPaletteChanged: {
            root.palette = approot.palette
            root.palette.windowText = sysPalette.text
            root.palette.buttonText = sysPalette.text
        }
    }
}
