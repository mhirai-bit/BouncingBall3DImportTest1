import QtQuick
import QtQuick3D

import QtQuick.Timeline

Node {
    id: node

    // Resources

    // Nodes:
    Node {
        id: rootNode
        objectName: "RootNode"
        PerspectiveCamera {
            id: camera_camera
            objectName: "Camera"
            x: 4.426274299621582
            y: 287.6296691894531
            z: -1784.08349609375
            rotation: Qt.quaternion(0.998611, 0.0526895, -0.000915621, 4.83324e-05)
            scale.x: 100
            scale.y: 100
            scale.z: 100
            fieldOfView: 19.79887580871582
            fieldOfViewOrientation: PerspectiveCamera.Horizontal
        }
        Node {
            id: empty
            objectName: "Empty"
            x: -878.0336303710938
            y: 321.3370056152344
            z: 32.38214874267578
            rotation: Qt.quaternion(0.707107, -0.707107, 0, 0)
            scale.x: 100
            scale.y: 100
            scale.z: 100
            Model {
                id: sphere
                objectName: "Sphere"
                rotation: Qt.quaternion(-0.38736, -0.424964, -0.539976, 0.614642)
                source: "meshes/sphere_mesh.mesh"
                materials: [
                    yellow_material,
                    white_material,
                    red_material,
                    green_material,
                    blue_material
                ]
            }
        }
        Model {
            id: plane
            objectName: "Plane"
            rotation: Qt.quaternion(0.707107, -0.707107, 0, 0)
            scale.x: 100
            scale.y: 100
            scale.z: 100
            source: "meshes/plane_mesh.mesh"
            materials: [
                defaultMaterial_material
            ]
        }
        DirectionalLight {
            id: sun_light
            objectName: "Sun"
            y: 1009.3212280273438
            rotation: Qt.quaternion(-0.382752, 0.919687, 0.061954, 0.061954)
            scale.x: 100
            scale.y: 100
            scale.z: 100
            brightness: 4
        }
    }

    // Animations:
    Timeline {
        id: sphere_CubeAction_timeline
        objectName: "Sphere|CubeAction"
        property real framesPerSecond: 24
        startFrame: 0
        endFrame: 0
        currentFrame: 0
        enabled: true
        animations: TimelineAnimation {
            duration: 0
            from: 0
            to: 0
            running: true
            loops: Animation.Infinite
        }
        KeyframeGroup {
            target: sphere
            property: "rotation"
            Keyframe {
                frame: 0
                value: Qt.quaternion(0.995004, 0, 0.0998334, 0)
            }
        }
    }
    Timeline {
        id: sphere_EmptyAction_timeline
        objectName: "Sphere|EmptyAction"
        property real framesPerSecond: 24
        startFrame: 0
        endFrame: 1709
        currentFrame: 0
        enabled: true
        animations: TimelineAnimation {
            duration: 1709
            from: 0
            to: 1709
            running: true
            loops: Animation.Infinite
        }
        KeyframeGroup {
            target: sphere
            property: "position"
            keyframeSource: "animations/sphere_position_1.qad"
        }
        KeyframeGroup {
            target: sphere
            property: "rotation"
            keyframeSource: "animations/sphere_rotation_1.qad"
        }
    }
    Timeline {
        id: empty_EmptyAction_timeline
        objectName: "Empty|EmptyAction"
        property real framesPerSecond: 24
        startFrame: 0
        endFrame: 1709
        currentFrame: 0
        enabled: true
        animations: TimelineAnimation {
            duration: 1709
            from: 0
            to: 1709
            running: true
            loops: Animation.Infinite
        }
        KeyframeGroup {
            target: empty
            property: "position"
            keyframeSource: "animations/empty_position_2.qad"
        }
    }

    Node {
        id: __materialLibrary__

        PrincipledMaterial {
            id: yellow_material
            objectName: "Yellow"
            baseColor: "#ff85cc00"
            roughness: 0.10000002384185791
        }

        PrincipledMaterial {
            id: white_material
            objectName: "White"
            baseColor: "#ffcccccc"
            roughness: 0.10000002384185791
        }

        PrincipledMaterial {
            id: red_material
            objectName: "Red"
            baseColor: "#ffcc0000"
            roughness: 0.10000002384185791
        }

        PrincipledMaterial {
            id: green_material
            objectName: "Green"
            baseColor: "#ff00cc01"
            roughness: 0.10000002384185791
        }

        PrincipledMaterial {
            id: blue_material
            objectName: "Blue"
            baseColor: "#ff0003cc"
            roughness: 0.10000002384185791
        }

        PrincipledMaterial {
            id: defaultMaterial_material
            objectName: "DefaultMaterial"
            baseColor: "#ffcccccc"
        }
    }
}

/*##^##
Designer {
    D{i:0;cameraSpeed3d:25;cameraSpeed3dMultiplier:1}
}
##^##*/
