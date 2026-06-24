// qmllint disable uncreatable-type

import Quickshell
import QtQuick
import QtQuick.Layouts

PanelWindow {
    anchors {
        top: true
        left: true
        right: true
    }
    implicitHeight: 30

    color: "transparent"
    Rectangle {
        anchors.fill: parent
        color: "black"
        opacity: 0.5
    }

    RowLayout {
        anchors.fill: parent
        anchors.leftMargin: 20
        anchors.rightMargin: 20

        LeftComp {}
        CenterComp {}
        RightComp {}
    }
}
