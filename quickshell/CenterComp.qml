import QtQuick
import QtQuick.Layouts
import Quickshell.Hyprland

RowLayout {
    anchors.centerIn: parent

    Txt {
        visible: Hyprland.activeToplevel && Hyprland.activeToplevel.workspace?.id === Hyprland.focusedWorkspace?.id

        text: visible ? Hyprland.activeToplevel.title : ""
    }
}
