import QtQuick
import QtQuick.Layouts

RowLayout {
    Layout.alignment: Qt.AlignRight

    Txt {
        id: clock
        property bool t: true
        MouseArea {
            anchors.fill: parent
            onClicked: clock.t = !clock.t
        }

        text: t ? Qt.formatDateTime(new Date(), "HH:mm") : Qt.formatDateTime(new Date(), "dd/MM/yyyy")

        Timer {
            interval: 1000
            running: clock.t
            repeat: true
            onTriggered: clock.text = Qt.formatDateTime(new Date(), "HH:mm")
        }
    }
}
