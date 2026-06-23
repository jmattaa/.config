import QtQuick
import QtQuick.Layouts
import Quickshell.Hyprland

RowLayout {
    Layout.alignment: Qt.AlignLeft

    Repeater {
        id: repeater
        model: 9

        Txt {
            property var ws: Hyprland.workspaces.values.find(w => w.id === index + 1)
            property bool focused: Hyprland.focusedWorkspace?.id === (index + 1)
            text: focused ? "  " : (ws ? "  " : "")
        }
    }
}
