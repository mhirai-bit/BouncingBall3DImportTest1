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
            Keyframe {
                frame: 0
                value: Qt.vector3d(8.79413, -0.471218, 4.3006)
            }
            Keyframe {
                frame: 41.6667
                value: Qt.vector3d(8.35442, -0.468543, 4.48553)
            }
            Keyframe {
                frame: 83.3333
                value: Qt.vector3d(7.9147, -0.460888, 4.64313)
            }
            Keyframe {
                frame: 125
                value: Qt.vector3d(7.47499, -0.448805, 4.77257)
            }
            Keyframe {
                frame: 166.667
                value: Qt.vector3d(7.03527, -0.432847, 4.87298)
            }
            Keyframe {
                frame: 208.333
                value: Qt.vector3d(6.59555, -0.41357, 4.94336)
            }
            Keyframe {
                frame: 250
                value: Qt.vector3d(6.15584, -0.391525, 4.98258)
            }
            Keyframe {
                frame: 291.667
                value: Qt.vector3d(5.71612, -0.367266, 4.9894)
            }
            Keyframe {
                frame: 333.333
                value: Qt.vector3d(5.27641, -0.341348, 4.9624)
            }
            Keyframe {
                frame: 375
                value: Qt.vector3d(4.83669, -0.314322, 4.89992)
            }
            Keyframe {
                frame: 416.667
                value: Qt.vector3d(4.39697, -0.286743, 4.80006)
            }
            Keyframe {
                frame: 458.333
                value: Qt.vector3d(3.95726, -0.259164, 4.66054)
            }
            Keyframe {
                frame: 500
                value: Qt.vector3d(3.51754, -0.232138, 4.47864)
            }
            Keyframe {
                frame: 541.667
                value: Qt.vector3d(3.07783, -0.206219, 4.25096)
            }
            Keyframe {
                frame: 583.333
                value: Qt.vector3d(2.63811, -0.181961, 3.97321)
            }
            Keyframe {
                frame: 625
                value: Qt.vector3d(2.19839, -0.159916, 3.63967)
            }
            Keyframe {
                frame: 666.667
                value: Qt.vector3d(1.75868, -0.140638, 3.24237)
            }
            Keyframe {
                frame: 708.333
                value: Qt.vector3d(1.31896, -0.124681, 2.76929)
            }
            Keyframe {
                frame: 750
                value: Qt.vector3d(0.879245, -0.112598, 2.19987)
            }
            Keyframe {
                frame: 791.667
                value: Qt.vector3d(0.439529, -0.104942, 1.49022)
            }
            Keyframe {
                frame: 833.333
                value: Qt.vector3d(-0.00018692, -0.102267, 0.460267)
            }
            Keyframe {
                frame: 875
                value: Qt.vector3d(-0.418289, -0.103874, 1.58547)
            }
            Keyframe {
                frame: 916.667
                value: Qt.vector3d(-0.836392, -0.108471, 2.10104)
            }
            Keyframe {
                frame: 958.333
                value: Qt.vector3d(-1.25449, -0.115727, 2.49519)
            }
            Keyframe {
                frame: 1000
                value: Qt.vector3d(-1.6726, -0.125309, 2.81748)
            }
            Keyframe {
                frame: 1041.67
                value: Qt.vector3d(-2.0907, -0.136885, 3.08727)
            }
            Keyframe {
                frame: 1083.33
                value: Qt.vector3d(-2.5088, -0.150123, 3.31441)
            }
            Keyframe {
                frame: 1125
                value: Qt.vector3d(-2.9269, -0.16469, 3.50461)
            }
            Keyframe {
                frame: 1166.67
                value: Qt.vector3d(-3.34501, -0.180254, 3.66139)
            }
            Keyframe {
                frame: 1208.33
                value: Qt.vector3d(-3.76311, -0.196483, 3.787)
            }
            Keyframe {
                frame: 1250
                value: Qt.vector3d(-4.18121, -0.213044, 3.88285)
            }
            Keyframe {
                frame: 1291.67
                value: Qt.vector3d(-4.59931, -0.229606, 3.94976)
            }
            Keyframe {
                frame: 1333.33
                value: Qt.vector3d(-5.01742, -0.245834, 3.98811)
            }
            Keyframe {
                frame: 1375
                value: Qt.vector3d(-5.43552, -0.261399, 3.99794)
            }
            Keyframe {
                frame: 1416.67
                value: Qt.vector3d(-5.85362, -0.275966, 3.97899)
            }
            Keyframe {
                frame: 1458.33
                value: Qt.vector3d(-6.27172, -0.289204, 3.93073)
            }
            Keyframe {
                frame: 1500
                value: Qt.vector3d(-6.68982, -0.30078, 3.85238)
            }
            Keyframe {
                frame: 1541.67
                value: Qt.vector3d(-7.10793, -0.310362, 3.74291)
            }
            Keyframe {
                frame: 1583.33
                value: Qt.vector3d(-7.52603, -0.317618, 3.60102)
            }
            Keyframe {
                frame: 1625
                value: Qt.vector3d(-7.94413, -0.322215, 3.42514)
            }
            Keyframe {
                frame: 1666.67
                value: Qt.vector3d(-8.36223, -0.323821, 3.21337)
            }
            Keyframe {
                frame: 1708.33
                value: Qt.vector3d(-8.78034, -0.323821, 3.21337)
            }
        }
        KeyframeGroup {
            target: sphere
            property: "rotation"
            Keyframe {
                frame: 0
                value: Qt.quaternion(0.646272, 0.762684, 0.0193908, 0.0164311)
            }
            Keyframe {
                frame: 41.6667
                value: Qt.quaternion(0.644979, 0.757234, 0.0838135, -0.0597923)
            }
            Keyframe {
                frame: 83.3333
                value: Qt.quaternion(0.637242, 0.744217, 0.147399, -0.135418)
            }
            Keyframe {
                frame: 125
                value: Qt.quaternion(0.623137, 0.723764, 0.209511, -0.209691)
            }
            Keyframe {
                frame: 166.667
                value: Qt.quaternion(0.602807, 0.69608, 0.26953, -0.281869)
            }
            Keyframe {
                frame: 208.333
                value: Qt.quaternion(0.576453, 0.661441, 0.326856, -0.351231)
            }
            Keyframe {
                frame: 250
                value: Qt.quaternion(0.54434, 0.620192, 0.380916, -0.417083)
            }
            Keyframe {
                frame: 291.667
                value: Qt.quaternion(0.506788, 0.572748, 0.431171, -0.478767)
            }
            Keyframe {
                frame: 333.333
                value: Qt.quaternion(-0.464172, -0.51958, -0.477117, 0.535668)
            }
            Keyframe {
                frame: 375
                value: Qt.quaternion(-0.416918, -0.461221, -0.518296, 0.587217)
            }
            Keyframe {
                frame: 416.667
                value: Qt.quaternion(-0.365499, -0.398254, -0.554296, 0.632899)
            }
            Keyframe {
                frame: 458.333
                value: Qt.quaternion(-0.310428, -0.331307, -0.584758, 0.672257)
            }
            Keyframe {
                frame: 500
                value: Qt.quaternion(-0.252255, -0.26105, -0.609377, 0.704897)
            }
            Keyframe {
                frame: 541.667
                value: Qt.quaternion(-0.191561, -0.188185, -0.627907, 0.730495)
            }
            Keyframe {
                frame: 583.333
                value: Qt.quaternion(-0.128954, -0.113439, -0.640164, 0.748794)
            }
            Keyframe {
                frame: 625
                value: Qt.quaternion(-0.0650577, -0.0375602, -0.646024, 0.759611)
            }
            Keyframe {
                frame: 666.667
                value: Qt.quaternion(-0.000511645, 0.0386942, -0.64543, 0.762839)
            }
            Keyframe {
                frame: 708.333
                value: Qt.quaternion(0.0640394, 0.114562, -0.638386, 0.758444)
            }
            Keyframe {
                frame: 750
                value: Qt.quaternion(0.127951, 0.189285, -0.624964, 0.746471)
            }
            Keyframe {
                frame: 791.667
                value: Qt.quaternion(0.190583, 0.262116, -0.605298, 0.72704)
            }
            Keyframe {
                frame: 833.333
                value: Qt.quaternion(0.251312, 0.332329, -0.579584, 0.700344)
            }
            Keyframe {
                frame: 875
                value: Qt.quaternion(0.309529, 0.399222, -0.548078, 0.666651)
            }
            Keyframe {
                frame: 916.667
                value: Qt.quaternion(0.364654, 0.462125, -0.511097, 0.626297)
            }
            Keyframe {
                frame: 958.333
                value: Qt.quaternion(0.416136, 0.520411, -0.469008, 0.579685)
            }
            Keyframe {
                frame: 1000
                value: Qt.quaternion(0.463459, 0.573497, -0.422234, 0.527281)
            }
            Keyframe {
                frame: 1041.67
                value: Qt.quaternion(0.506152, 0.620853, -0.371241, 0.469609)
            }
            Keyframe {
                frame: 1083.33
                value: Qt.quaternion(0.543787, 0.662006, -0.316538, 0.407244)
            }
            Keyframe {
                frame: 1125
                value: Qt.quaternion(0.575989, 0.696544, -0.258673, 0.340811)
            }
            Keyframe {
                frame: 1166.67
                value: Qt.quaternion(0.602436, 0.724122, -0.198223, 0.270972)
            }
            Keyframe {
                frame: 1208.33
                value: Qt.quaternion(0.622864, 0.744465, -0.135792, 0.198426)
            }
            Keyframe {
                frame: 1250
                value: Qt.quaternion(0.637068, 0.75737, -0.0720051, 0.123897)
            }
            Keyframe {
                frame: 1291.67
                value: Qt.quaternion(0.644906, 0.762708, -0.00749841, 0.0481299)
            }
            Keyframe {
                frame: 1333.33
                value: Qt.quaternion(0.646302, 0.760424, 0.0570833, -0.028118)
            }
            Keyframe {
                frame: 1375
                value: Qt.quaternion(0.641239, 0.750543, 0.121095, -0.104085)
            }
            Keyframe {
                frame: 1416.67
                value: Qt.quaternion(0.62977, 0.733163, 0.183896, -0.179011)
            }
            Keyframe {
                frame: 1458.33
                value: Qt.quaternion(0.612007, 0.708457, 0.24486, -0.25215)
            }
            Keyframe {
                frame: 1500
                value: Qt.quaternion(0.58813, 0.676672, 0.303377, -0.322769)
            }
            Keyframe {
                frame: 1541.67
                value: Qt.quaternion(0.558377, 0.638126, 0.358864, -0.390163)
            }
            Keyframe {
                frame: 1583.33
                value: Qt.quaternion(0.523045, 0.593205, 0.410764, -0.453658)
            }
            Keyframe {
                frame: 1625
                value: Qt.quaternion(0.482486, 0.542356, 0.45856, -0.512621)
            }
            Keyframe {
                frame: 1666.67
                value: Qt.quaternion(-0.437106, -0.486088, -0.501775, 0.566461)
            }
            Keyframe {
                frame: 1708.33
                value: Qt.quaternion(-0.38736, -0.424964, -0.539976, 0.614642)
            }
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
            Keyframe {
                frame: 0
                value: Qt.vector3d(879.413, 430.06, 47.1218)
            }
            Keyframe {
                frame: 41.6667
                value: Qt.vector3d(835.442, 448.553, 46.8543)
            }
            Keyframe {
                frame: 83.3333
                value: Qt.vector3d(791.47, 464.313, 46.0888)
            }
            Keyframe {
                frame: 125
                value: Qt.vector3d(747.499, 477.257, 44.8805)
            }
            Keyframe {
                frame: 166.667
                value: Qt.vector3d(703.527, 487.298, 43.2847)
            }
            Keyframe {
                frame: 208.333
                value: Qt.vector3d(659.555, 494.336, 41.357)
            }
            Keyframe {
                frame: 250
                value: Qt.vector3d(615.584, 498.258, 39.1525)
            }
            Keyframe {
                frame: 291.667
                value: Qt.vector3d(571.612, 498.94, 36.7266)
            }
            Keyframe {
                frame: 333.333
                value: Qt.vector3d(527.641, 496.24, 34.1348)
            }
            Keyframe {
                frame: 375
                value: Qt.vector3d(483.669, 489.992, 31.4322)
            }
            Keyframe {
                frame: 416.667
                value: Qt.vector3d(439.697, 480.006, 28.6743)
            }
            Keyframe {
                frame: 458.333
                value: Qt.vector3d(395.726, 466.054, 25.9164)
            }
            Keyframe {
                frame: 500
                value: Qt.vector3d(351.754, 447.864, 23.2138)
            }
            Keyframe {
                frame: 541.667
                value: Qt.vector3d(307.783, 425.096, 20.6219)
            }
            Keyframe {
                frame: 583.333
                value: Qt.vector3d(263.811, 397.321, 18.1961)
            }
            Keyframe {
                frame: 625
                value: Qt.vector3d(219.839, 363.967, 15.9916)
            }
            Keyframe {
                frame: 666.667
                value: Qt.vector3d(175.868, 324.237, 14.0638)
            }
            Keyframe {
                frame: 708.333
                value: Qt.vector3d(131.896, 276.929, 12.4681)
            }
            Keyframe {
                frame: 750
                value: Qt.vector3d(87.9245, 219.987, 11.2598)
            }
            Keyframe {
                frame: 791.667
                value: Qt.vector3d(43.9529, 149.022, 10.4942)
            }
            Keyframe {
                frame: 833.333
                value: Qt.vector3d(-0.018692, 46.0267, 10.2267)
            }
            Keyframe {
                frame: 875
                value: Qt.vector3d(-41.8289, 158.547, 10.3874)
            }
            Keyframe {
                frame: 916.667
                value: Qt.vector3d(-83.6392, 210.104, 10.8471)
            }
            Keyframe {
                frame: 958.333
                value: Qt.vector3d(-125.449, 249.519, 11.5727)
            }
            Keyframe {
                frame: 1000
                value: Qt.vector3d(-167.26, 281.748, 12.5309)
            }
            Keyframe {
                frame: 1041.67
                value: Qt.vector3d(-209.07, 308.727, 13.6885)
            }
            Keyframe {
                frame: 1083.33
                value: Qt.vector3d(-250.88, 331.441, 15.0123)
            }
            Keyframe {
                frame: 1125
                value: Qt.vector3d(-292.69, 350.461, 16.469)
            }
            Keyframe {
                frame: 1166.67
                value: Qt.vector3d(-334.501, 366.139, 18.0254)
            }
            Keyframe {
                frame: 1208.33
                value: Qt.vector3d(-376.311, 378.7, 19.6483)
            }
            Keyframe {
                frame: 1250
                value: Qt.vector3d(-418.121, 388.285, 21.3044)
            }
            Keyframe {
                frame: 1291.67
                value: Qt.vector3d(-459.931, 394.976, 22.9606)
            }
            Keyframe {
                frame: 1333.33
                value: Qt.vector3d(-501.742, 398.811, 24.5834)
            }
            Keyframe {
                frame: 1375
                value: Qt.vector3d(-543.552, 399.794, 26.1399)
            }
            Keyframe {
                frame: 1416.67
                value: Qt.vector3d(-585.362, 397.899, 27.5966)
            }
            Keyframe {
                frame: 1458.33
                value: Qt.vector3d(-627.172, 393.073, 28.9204)
            }
            Keyframe {
                frame: 1500
                value: Qt.vector3d(-668.982, 385.238, 30.078)
            }
            Keyframe {
                frame: 1541.67
                value: Qt.vector3d(-710.793, 374.291, 31.0362)
            }
            Keyframe {
                frame: 1583.33
                value: Qt.vector3d(-752.603, 360.102, 31.7618)
            }
            Keyframe {
                frame: 1625
                value: Qt.vector3d(-794.413, 342.514, 32.2215)
            }
            Keyframe {
                frame: 1666.67
                value: Qt.vector3d(-836.223, 321.337, 32.3821)
            }
            Keyframe {
                frame: 1708.33
                value: Qt.vector3d(-878.034, 321.337, 32.3821)
            }
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
