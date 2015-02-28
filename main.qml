import QtQuick 2.4
import QtQuick.Controls 1.3
import QtQuick.Window 2.2
import QtQuick.Dialogs 1.2

ApplicationWindow {
    title: qsTr("webview crash on unload")
    width: 640
    height: 480
    visible: true

    StackView
    {
        id: pageStack
        initialItem: "qrc:/1.qml"

        anchors
        {
            bottom: toolBar.top
            top: parent.top
        }
    }
    // Toolbar ---------------------------------
    Rectangle
    {
        id: toolBar
        height: 60
        anchors.bottom: parent.bottom
        width: parent.width
        color: "black"

        Rectangle
        {
            id: backButton
            width: 150
            height: 50
            Text
            {
                anchors.fill: parent
                text: "2) Back"
            }
            MouseArea{
                anchors.fill: parent
                onClicked: pageStack.pop()
            }
        }

        Rectangle
        {
            id: forwardButton
            width: 150
            height: 50
            anchors.right: parent.right

            Text
            {
                anchors.fill: parent
                text: "1) forward"
            }
            MouseArea{
                anchors.fill: parent
                onClicked: pageStack.push("qrc:/webview.qml")
            }
        }
    }

}
