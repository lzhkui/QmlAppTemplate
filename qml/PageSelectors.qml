import QtQuick
import QtQuick.Controls

import ThemeEngine

Flickable {
    contentWidth: -1
    contentHeight: contentColumn.height

    boundsBehavior: isDesktop ? Flickable.OvershootBounds : Flickable.DragAndOvershootBounds
    ScrollBar.vertical: ScrollBar { visible: isDesktop; }

    Column {
        id: contentColumn

        anchors.left: parent.left
        anchors.right: parent.right

        topPadding: Theme.componentMarginXL
        bottomPadding: Theme.componentMarginXL
        spacing: Theme.componentMarginXL

        ListTitle { ////////////////////////////////////////////////////////////
            anchors.leftMargin: singleColumn ? 0 : Theme.componentMargin
            anchors.rightMargin: singleColumn ? 0 : Theme.componentMargin

            text: qsTr("Selectors")
            icon: ""
        }

        ListModel {
            id: lmSelectorMenuTxt
            ListElement { idx: 1; txt: "4/3"; src: ""; sz: 0; }
            ListElement { idx: 2; txt: "16/9"; src: ""; sz: 0; }
            ListElement { idx: 3; txt: "21/9"; src: ""; sz: 0; }
        }
        ListModel {
            id: lmSelectorMenuImg
            ListElement { idx: 1; src: "qrc:/assets/icons_material/baseline-accessibility-24px.svg"; sz: 20; }
            ListElement { idx: 2; src: "qrc:/assets/icons_material/baseline-accessibility-24px.svg"; sz: 26; }
            ListElement { idx: 3; src: "qrc:/assets/icons_material/baseline-accessibility-24px.svg"; sz: 32; }
        }
        ListModel {
            id: lmSelectorMenuImgTxt
            ListElement { idx: 1; txt: "4/3"; src: "qrc:/assets/icons_material/baseline-accessibility-24px.svg"; sz: 20; }
            ListElement { idx: 2; txt: "16/9"; src: "qrc:/assets/icons_material/baseline-accessibility-24px.svg"; sz: 26; }
            ListElement { idx: 3; txt: "21/9"; src: "qrc:/assets/icons_material/baseline-accessibility-24px.svg"; sz: 32; }
        }

        ////

        SelectorMenuThemed {
            anchors.horizontalCenter: parent.horizontalCenter
            height: 32

            currentSelection: 1
            model: lmSelectorMenuTxt

            onMenuSelected: (index) => {
                //console.log("SelectorMenu clicked #" + index)
                currentSelection = index
            }
        }

        ////

        SelectorMenuThemed {
            anchors.horizontalCenter: parent.horizontalCenter
            height: 40

            currentSelection: 1
            model: lmSelectorMenuImg

            onMenuSelected: (index) => {
                //console.log("SelectorMenu clicked #" + index)
                currentSelection = index
            }
        }

        ////

        SelectorMenuThemed {
            anchors.horizontalCenter: parent.horizontalCenter
            height: 36

            model: lmSelectorMenuImgTxt

            onMenuSelected: (index) => {
                //console.log("SelectorMenu clicked #" + index)
                currentSelection = index
            }
        }

        ////

        SelectorMenu {
            anchors.horizontalCenter: parent.horizontalCenter
            height: 32

            currentSelection: 1
            model: lmSelectorMenuTxt

            onMenuSelected: (index) => {
                //console.log("SelectorMenu clicked #" + index)
                currentSelection = index
            }
        }

        ////

        SelectorMenu {
            anchors.horizontalCenter: parent.horizontalCenter
            height: 40

            model: lmSelectorMenuImg

            onMenuSelected: (index) => {
                //console.log("SelectorMenu clicked #" + index)
                currentSelection = index
            }
        }

        ////

        SelectorMenu {
            anchors.horizontalCenter: parent.horizontalCenter
            height: 36

            model: lmSelectorMenuImgTxt

            onMenuSelected: (index) => {
                //console.log("SelectorMenu clicked #" + index)
                currentSelection = index
            }
        }

        ////
    }
}
