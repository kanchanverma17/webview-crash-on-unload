import QtQuick 2.2
import QtQuick.Controls 1.1
import QtWebView 1.0
import QtQuick.Layouts 1.1
import QtQuick.Controls.Styles 1.2


Item {
    property alias theUrl : test.url
    width: app.width
    height: app.height

    WebView {
         id: test
         anchors.fill: parent
         url: "http://google.com"
         onUrlChanged: console.log("changing to: " + url)
     }
}
