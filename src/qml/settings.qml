import QtQuick 2.7
import Material 0.3
import Material.ListItems 0.1 as ListItem
import Material.Extras 0.1
import QtQuick.Layouts 1.1

TabbedPage {
    id: settings
    title: "Settings"

    onGoBack: {
        settings.forcePop();
    }
    Tab {
        title: "General"
        ColumnLayout {
            Rectangle {
                Layout.fillHeight: true
                Layout.fillWidth: true
                Layout.minimumHeight: settingsGrid.height + dp(80)
                Layout.minimumWidth: settingsGrid.width + dp(80)
                color: "#333"

                GridLayout {
                    id: settingsGrid
                    anchors.centerIn: parent
                    rowSpacing: dp(20)
                    columnSpacing: dp(10)
                    columns: 2

                    Label {
                        text: "Timer interval"
                        Layout.alignment:  Qt.AlignBottom
                        color: Theme.dark.textColor
                    }

                    Slider {
                        Layout.alignment: Qt.AlignCenter
                        value: 16
                        tickmarksEnabled: true
                        numericValueLabel: true
                        stepSize: 3
                        minimumValue: 1
                        maximumValue: 55
                        darkBackground: true
                        onValueChanged: game.changeTimerInterval(value)
                    }
                    Label {
                        text: "Round timeout"
                        color: Theme.dark.textColor
                    }
                    Slider {
                        value: 2
                        tickmarksEnabled: true
                        stepSize: 1
                        numericValueLabel: true
                        minimumValue: 0
                        maximumValue: 10
                        darkBackground: true
                        onValueChanged: game.setRoundTimeout(value)
                    }
                    Label {
                        text: "Base speed"
                        color: Theme.dark.textColor
                    }
                    Slider {
                        value: 128
                        tickmarksEnabled: true
                        stepSize: 32
                        numericValueLabel: true
                        minimumValue: 64
                        maximumValue: 512
                        darkBackground: true
                        onValueChanged: game.setBaseSpeed(value)
                    }
                }
            }
        }
    }
    Tab {
        title: "Miscellaneous"
    }
}