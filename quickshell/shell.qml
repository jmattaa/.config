// qmllint disable uncreatable-type

import Quickshell
import Quickshell.Hyprland
import QtQuick
import QtQuick.Layouts

PanelWindow {
    anchors {
        top: true
        left: true
        right: true
    }
    implicitHeight: 30

    RowLayout {
        anchors.fill: parent
        anchors.leftMargin: 10
        anchors.rightMargin: 10

        RowLayout {
            Layout.alignment: Qt.AlignLeft

            Repeater {
                id: repeater
                model: 9

                Text {
                    property var ws: Hyprland.workspaces.values.find(w => w.id === index + 1)
                    property bool focused: Hyprland.focusedWorkspace?.id === (index + 1)
                    text: focused ? "  " : (ws ? "  " : "")
                    font.pixelSize: 20
                }
            }
        }

        RowLayout {
            anchors.centerIn: parent

            Text {
                text: Hyprland.activeToplevel === null  ? "" : Hyprland.activeToplevel.title
                font.pixelSize: 20
            }
        }

        RowLayout {
            Layout.alignment: Qt.AlignRight

            Text {
                text: "right"
                font.pixelSize: 20
            }
        }
    }
}
