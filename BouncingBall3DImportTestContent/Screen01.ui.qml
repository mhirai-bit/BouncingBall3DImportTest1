

/*
This is a UI file (.ui.qml) that is intended to be edited in Qt Design Studio only.
It is supposed to be strictly declarative and only uses a subset of QML. If you edit
this file manually, you might introduce QML code that is not supported by Qt Design Studio.
Check out https://doc.qt.io/qtcreator/creator-quick-ui-forms.html for details on .ui.qml files.
*/
import QtQuick
import QtQuick.Controls
import QtQuick3D
import QtQuick3D.Effects
import BouncingBall3DImportTest
import Generated.QtQuick3D.Bouncing_ball

Rectangle {
    width: Constants.width
    height: Constants.height

    color: Constants.backgroundColor

    View3D {
        id: view3D
        anchors.fill: parent

        environment: sceneEnvironment

        SceneEnvironment {
            id: sceneEnvironment
            antialiasingMode: SceneEnvironment.MSAA
            antialiasingQuality: SceneEnvironment.High
        }

        PerspectiveCamera {
            x: -243.401
            y: 344.904
            fieldOfView: 40
            eulerRotation.z: -0
            eulerRotation.y: -179.96573
            eulerRotation.x: -0.00004
            z: -2050.12891
        }

        Bouncing_ball {
            id: bouncing_ball
        }
    }

    Item {
        id: __materialLibrary__
        PrincipledMaterial {
            id: defaultMaterial
            objectName: "Default Material"
            baseColor: "#4aee45"
        }
    }

    Text {
        text: qsTr("Hello BouncingBall3DImportTest")
        anchors.top: parent.top
        anchors.horizontalCenter: parent.horizontalCenter
        anchors.topMargin: 100
        font.family: Constants.font.family
    }
}

/*##^##
Designer {
    D{i:0}D{i:1;cameraSpeed3d:25;cameraSpeed3dMultiplier:1}
}
##^##*/

