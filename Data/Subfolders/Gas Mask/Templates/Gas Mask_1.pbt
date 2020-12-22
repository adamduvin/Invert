Assets {
  Id: 2932033270756911356
  Name: "Gas Mask"
  PlatformAssetType: 5
  TemplateAsset {
    ObjectBlock {
      RootId: 15357249076142943576
      Objects {
        Id: 15357249076142943576
        Name: "Gas Mask"
        Transform {
          Scale {
            X: 1
            Y: 1
            Z: 1
          }
        }
        ParentId: 4781671109827199097
        ChildIds: 3729444522252627798
        ChildIds: 4357243808188331626
        ChildIds: 1682716927276224940
        UnregisteredParameters {
        }
        WantsNetworking: true
        Collidable_v2 {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        Visible_v2 {
          Value: "mc:evisibilitysetting:inheritfromparent"
        }
        Equipment {
          SocketName: "head"
          PickupTrigger {
            SubObjectId: 4357243808188331626
          }
        }
      }
      Objects {
        Id: 3729444522252627798
        Name: "GasMaskStatMod"
        Transform {
          Location {
            X: 544.472107
            Y: 275.771912
            Z: -130
          }
          Rotation {
            Yaw: -134.999969
          }
          Scale {
            X: 1
            Y: 1
            Z: 1
          }
        }
        ParentId: 15357249076142943576
        WantsNetworking: true
        Collidable_v2 {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        Visible_v2 {
          Value: "mc:evisibilitysetting:inheritfromparent"
        }
        Script {
          ScriptAsset {
            Id: 1564932932374619282
          }
        }
      }
      Objects {
        Id: 4357243808188331626
        Name: "PickupTrigger"
        Transform {
          Location {
            Z: 19.8701096
          }
          Rotation {
          }
          Scale {
            X: 0.291352212
            Y: 0.291352212
            Z: 0.291352212
          }
        }
        ParentId: 15357249076142943576
        WantsNetworking: true
        Collidable_v2 {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        Visible_v2 {
          Value: "mc:evisibilitysetting:inheritfromparent"
        }
        Trigger {
          Interactable: true
          InteractionLabel: "Equip Gas Mask"
          TeamSettings {
            IsTeamCollisionEnabled: true
            IsEnemyCollisionEnabled: true
          }
          TriggerShape_v2 {
            Value: "mc:etriggershape:box"
          }
        }
      }
      Objects {
        Id: 1682716927276224940
        Name: "GeometryClientcontext"
        Transform {
          Location {
            X: 4.89897346
            Y: -3.48253911e-06
            Z: 0.356265068
          }
          Rotation {
            Pitch: 15.3513756
            Roll: 1.15641274e-10
          }
          Scale {
            X: 1
            Y: 1
            Z: 1
          }
        }
        ParentId: 15357249076142943576
        ChildIds: 14537782578195705087
        ChildIds: 9033919510080772116
        ChildIds: 16727033510310367053
        ChildIds: 6925677656987288934
        ChildIds: 5736255134202682541
        ChildIds: 8811737386126661512
        ChildIds: 14808784805381333655
        ChildIds: 13907608863814447820
        UnregisteredParameters {
        }
        WantsNetworking: true
        Collidable_v2 {
          Value: "mc:ecollisionsetting:forceoff"
        }
        Visible_v2 {
          Value: "mc:evisibilitysetting:inheritfromparent"
        }
        NetworkContext {
        }
      }
      Objects {
        Id: 14537782578195705087
        Name: "Base"
        Transform {
          Location {
            X: 4.86857414
            Y: 2.87764342e-05
            Z: -0.0100708008
          }
          Rotation {
            Pitch: -17.9417591
            Yaw: 2.05283632e-05
            Roll: 5.00000286
          }
          Scale {
            X: 1.01923013
            Y: 1.01923013
            Z: 1.01923013
          }
        }
        ParentId: 1682716927276224940
        ChildIds: 12971483919109732445
        ChildIds: 12262904631064760590
        ChildIds: 12891660264167831183
        ChildIds: 2762832783408295806
        ChildIds: 9587485169909400879
        Collidable_v2 {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        Visible_v2 {
          Value: "mc:evisibilitysetting:inheritfromparent"
        }
        Folder {
          IsGroup: true
        }
      }
      Objects {
        Id: 12971483919109732445
        Name: "Hemisphere"
        Transform {
          Location {
            X: -1.04781973
            Y: -1.13686838e-13
            Z: 4.53819847
          }
          Rotation {
            Pitch: -86.2989807
            Yaw: -6.10351563e-05
            Roll: 0.000125940758
          }
          Scale {
            X: 0.219943374
            Y: 0.14388144
            Z: 0.0988448933
          }
        }
        ParentId: 14537782578195705087
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 8000444647329274618
            }
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:smart"
            Bool: false
          }
        }
        Collidable_v2 {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        Visible_v2 {
          Value: "mc:evisibilitysetting:inheritfromparent"
        }
        CoreMesh {
          MeshAsset {
            Id: 5489775416547967874
          }
          Teams {
            IsTeamCollisionEnabled: true
            IsEnemyCollisionEnabled: true
          }
          EnableCameraCollision: true
          StaticMesh {
            Physics {
            }
          }
        }
      }
      Objects {
        Id: 12262904631064760590
        Name: "Hemisphere"
        Transform {
          Location {
            X: -1.04781783
            Y: -0.395530671
            Z: 4.52093172
          }
          Rotation {
            Pitch: -83.7819519
            Yaw: 53.4179802
            Roll: -53.5795784
          }
          Scale {
            X: 0.219943374
            Y: 0.14388144
            Z: 0.0988448933
          }
        }
        ParentId: 14537782578195705087
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 8000444647329274618
            }
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:smart"
            Bool: false
          }
        }
        Collidable_v2 {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        Visible_v2 {
          Value: "mc:evisibilitysetting:inheritfromparent"
        }
        CoreMesh {
          MeshAsset {
            Id: 5489775416547967874
          }
          Teams {
            IsTeamCollisionEnabled: true
            IsEnemyCollisionEnabled: true
          }
          EnableCameraCollision: true
          StaticMesh {
            Physics {
            }
          }
        }
      }
      Objects {
        Id: 12891660264167831183
        Name: "Hemisphere"
        Transform {
          Location {
            X: -1.04781067
            Y: -0.78805095
            Z: 4.46924877
          }
          Rotation {
            Pitch: -79.3435211
            Yaw: 69.5693
            Roll: -69.8931274
          }
          Scale {
            X: 0.219943374
            Y: 0.14388144
            Z: 0.0988448933
          }
        }
        ParentId: 14537782578195705087
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 8000444647329274618
            }
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:smart"
            Bool: false
          }
        }
        Collidable_v2 {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        Visible_v2 {
          Value: "mc:evisibilitysetting:inheritfromparent"
        }
        CoreMesh {
          MeshAsset {
            Id: 5489775416547967874
          }
          Teams {
            IsTeamCollisionEnabled: true
            IsEnemyCollisionEnabled: true
          }
          EnableCameraCollision: true
          StaticMesh {
            Physics {
            }
          }
        }
      }
      Objects {
        Id: 2762832783408295806
        Name: "Hemisphere"
        Transform {
          Location {
            X: -1.04782486
            Y: -1.17456102
            Z: 4.38356924
          }
          Rotation {
            Pitch: -74.560257
            Yaw: 75.9677811
            Roll: -76.4551392
          }
          Scale {
            X: 0.219943374
            Y: 0.14388144
            Z: 0.0988448933
          }
        }
        ParentId: 14537782578195705087
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 8000444647329274618
            }
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:smart"
            Bool: false
          }
        }
        Collidable_v2 {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        Visible_v2 {
          Value: "mc:evisibilitysetting:inheritfromparent"
        }
        CoreMesh {
          MeshAsset {
            Id: 5489775416547967874
          }
          Teams {
            IsTeamCollisionEnabled: true
            IsEnemyCollisionEnabled: true
          }
          EnableCameraCollision: true
          StaticMesh {
            Physics {
            }
          }
        }
      }
      Objects {
        Id: 9587485169909400879
        Name: "Hemisphere"
        Transform {
          Location {
            X: -1.04782379
            Y: 0.395517051
            Z: 4.5209341
          }
          Rotation {
            Pitch: -83.7818527
            Yaw: -53.4179039
            Roll: 53.5796204
          }
          Scale {
            X: 0.219943374
            Y: 0.14388144
            Z: 0.0988448933
          }
        }
        ParentId: 14537782578195705087
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 8000444647329274618
            }
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:smart"
            Bool: false
          }
        }
        Collidable_v2 {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        Visible_v2 {
          Value: "mc:evisibilitysetting:inheritfromparent"
        }
        CoreMesh {
          MeshAsset {
            Id: 5489775416547967874
          }
          Teams {
            IsTeamCollisionEnabled: true
            IsEnemyCollisionEnabled: true
          }
          EnableCameraCollision: true
          StaticMesh {
            Physics {
            }
          }
        }
      }
      Objects {
        Id: 9033919510080772116
        Name: "Trims"
        Transform {
          Location {
            X: 3.01159573
            Y: 0.156584561
            Z: 3.27606201
          }
          Rotation {
            Pitch: 74.1046829
            Yaw: -1.55990541
            Roll: -0.00841755886
          }
          Scale {
            X: 1.01923013
            Y: 1.01923013
            Z: 1.01923013
          }
        }
        ParentId: 1682716927276224940
        ChildIds: 1517213318591369887
        ChildIds: 12027119584312760974
        ChildIds: 2968093585506008102
        ChildIds: 17920004434580520537
        Collidable_v2 {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        Visible_v2 {
          Value: "mc:evisibilitysetting:inheritfromparent"
        }
        Folder {
          IsGroup: true
        }
      }
      Objects {
        Id: 1517213318591369887
        Name: "Ring - Quarter"
        Transform {
          Location {
            X: 5.96220922
            Y: 0.0125167295
            Z: -1.46909881
          }
          Rotation {
            Pitch: 0.000553245307
            Yaw: 13.0784645
            Roll: 0.000154372523
          }
          Scale {
            X: 0.154575944
            Y: 0.171152428
            Z: 0.28616944
          }
        }
        ParentId: 9033919510080772116
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 8000444647329274618
            }
          }
        }
        Collidable_v2 {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        Visible_v2 {
          Value: "mc:evisibilitysetting:inheritfromparent"
        }
        CoreMesh {
          MeshAsset {
            Id: 13952980983583304407
          }
          Teams {
            IsTeamCollisionEnabled: true
            IsEnemyCollisionEnabled: true
          }
          EnableCameraCollision: true
          StaticMesh {
            Physics {
            }
          }
        }
      }
      Objects {
        Id: 12027119584312760974
        Name: "Ring - Quarter"
        Transform {
          Location {
            X: 3.35223341
            Y: 5.1407547
            Z: -1.39157712
          }
          Rotation {
            Pitch: 0.219071478
            Yaw: -67.1719437
            Roll: -2.13131857
          }
          Scale {
            X: 0.286169231
            Y: 0.286169231
            Z: 0.286169231
          }
        }
        ParentId: 9033919510080772116
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 8000444647329274618
            }
          }
        }
        Collidable_v2 {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        Visible_v2 {
          Value: "mc:evisibilitysetting:inheritfromparent"
        }
        CoreMesh {
          MeshAsset {
            Id: 13952980983583304407
          }
          Teams {
            IsTeamCollisionEnabled: true
            IsEnemyCollisionEnabled: true
          }
          EnableCameraCollision: true
          StaticMesh {
            Physics {
            }
          }
        }
      }
      Objects {
        Id: 2968093585506008102
        Name: "Ring - Quarter"
        Transform {
          Location {
            X: 3.43045759
            Y: -5.31796646
            Z: -1.66391253
          }
          Rotation {
            Pitch: 1.79446137
            Yaw: 67.9753265
            Roll: -178.872955
          }
          Scale {
            X: 0.286169231
            Y: 0.286169231
            Z: 0.286169231
          }
        }
        ParentId: 9033919510080772116
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 8000444647329274618
            }
          }
        }
        Collidable_v2 {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        Visible_v2 {
          Value: "mc:evisibilitysetting:inheritfromparent"
        }
        CoreMesh {
          MeshAsset {
            Id: 13952980983583304407
          }
          Teams {
            IsTeamCollisionEnabled: true
            IsEnemyCollisionEnabled: true
          }
          EnableCameraCollision: true
          StaticMesh {
            Physics {
            }
          }
        }
      }
      Objects {
        Id: 17920004434580520537
        Name: "Ring - Quarter"
        Transform {
          Location {
            X: 5.96198273
            Y: -0.123093255
            Z: -1.49270082
          }
          Rotation {
            Pitch: -0.207596764
            Yaw: -13.0874014
            Roll: 179.335373
          }
          Scale {
            X: 0.154575944
            Y: 0.171152428
            Z: 0.28616944
          }
        }
        ParentId: 9033919510080772116
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 8000444647329274618
            }
          }
        }
        Collidable_v2 {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        Visible_v2 {
          Value: "mc:evisibilitysetting:inheritfromparent"
        }
        CoreMesh {
          MeshAsset {
            Id: 13952980983583304407
          }
          Teams {
            IsTeamCollisionEnabled: true
            IsEnemyCollisionEnabled: true
          }
          EnableCameraCollision: true
          StaticMesh {
            Physics {
            }
          }
        }
      }
      Objects {
        Id: 16727033510310367053
        Name: "Filter"
        Transform {
          Location {
            X: 6.74096489
            Y: -2.41075736e-06
            Z: -0.610473633
          }
          Rotation {
            Pitch: -0.000150264153
            Yaw: 89.9996414
            Roll: -125.030197
          }
          Scale {
            X: 0.153333709
            Y: 0.153333709
            Z: 0.153333709
          }
        }
        ParentId: 1682716927276224940
        ChildIds: 6955702780176824814
        ChildIds: 496924780208431224
        ChildIds: 7382917390203657023
        ChildIds: 11437266959093015966
        ChildIds: 13540260557155038096
        Collidable_v2 {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        Visible_v2 {
          Value: "mc:evisibilitysetting:inheritfromparent"
        }
        Folder {
          IsGroup: true
        }
      }
      Objects {
        Id: 6955702780176824814
        Name: "Pyramid - 3-Sided Truncated Polished"
        Transform {
          Location {
          }
          Rotation {
            Pitch: 0.000122943398
            Yaw: 89.7784805
            Roll: -0.000122070313
          }
          Scale {
            X: 0.842950881
            Y: 0.732924283
            Z: 0.629083812
          }
        }
        ParentId: 16727033510310367053
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 8000444647329274618
            }
          }
        }
        Collidable_v2 {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        Visible_v2 {
          Value: "mc:evisibilitysetting:inheritfromparent"
        }
        CoreMesh {
          MeshAsset {
            Id: 8414945924149838582
          }
          Teams {
            IsTeamCollisionEnabled: true
            IsEnemyCollisionEnabled: true
          }
          EnableCameraCollision: true
          StaticMesh {
            Physics {
            }
          }
        }
      }
      Objects {
        Id: 496924780208431224
        Name: "Modern Weapon - Disc 01"
        Transform {
          Location {
            X: 0.222092584
            Y: -0.739676833
            Z: 33.5207138
          }
          Rotation {
            Pitch: -90
            Yaw: -5.05114746
            Roll: 5.0511837
          }
          Scale {
            X: 1.0816077
            Y: 1.0816077
            Z: 1.0816077
          }
        }
        ParentId: 16727033510310367053
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 8000444647329274618
            }
          }
        }
        Collidable_v2 {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        Visible_v2 {
          Value: "mc:evisibilitysetting:inheritfromparent"
        }
        CoreMesh {
          MeshAsset {
            Id: 12888726374622842928
          }
          Teams {
            IsTeamCollisionEnabled: true
            IsEnemyCollisionEnabled: true
          }
          EnableCameraCollision: true
          StaticMesh {
            Physics {
            }
          }
        }
      }
      Objects {
        Id: 7382917390203657023
        Name: "Grenade Canister 02"
        Transform {
          Location {
            X: -27.642561
            Y: -10.6578102
            Z: 25.0356121
          }
          Rotation {
            Pitch: -4.40246582
            Yaw: 104.67511
            Roll: 53.7013741
          }
          Scale {
            X: 3.2691431
            Y: 3.26914454
            Z: 1.33458793
          }
        }
        ParentId: 16727033510310367053
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_Detail1:color"
            Color {
              R: 0.0980392247
              G: 0.0980392247
              B: 0.0980392247
              A: 1
            }
          }
          Overrides {
            Name: "ma:Shared_Detail1:id"
            AssetReference {
              Id: 8000444647329274618
            }
          }
          Overrides {
            Name: "ma:Shared_Detail2:id"
            AssetReference {
              Id: 8000444647329274618
            }
          }
        }
        Collidable_v2 {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        Visible_v2 {
          Value: "mc:evisibilitysetting:inheritfromparent"
        }
        CoreMesh {
          MeshAsset {
            Id: 12486469380190802843
          }
          Teams {
            IsTeamCollisionEnabled: true
            IsEnemyCollisionEnabled: true
          }
          EnableCameraCollision: true
          StaticMesh {
            Physics {
            }
          }
        }
      }
      Objects {
        Id: 11437266959093015966
        Name: "Modern Weapon - Disc 01"
        Transform {
          Location {
            X: -27.642561
            Y: -10.6578102
            Z: 25.0356121
          }
          Rotation {
            Pitch: 36.1738739
            Yaw: -168.54808
            Roll: 84.5430527
          }
          Scale {
            X: 3.48812318
            Y: 1.0816077
            Z: 1.08160722
          }
        }
        ParentId: 16727033510310367053
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 8000444647329274618
            }
          }
        }
        Collidable_v2 {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        Visible_v2 {
          Value: "mc:evisibilitysetting:inheritfromparent"
        }
        CoreMesh {
          MeshAsset {
            Id: 12888726374622842928
          }
          Teams {
            IsTeamCollisionEnabled: true
            IsEnemyCollisionEnabled: true
          }
          EnableCameraCollision: true
          StaticMesh {
            Physics {
            }
          }
        }
      }
      Objects {
        Id: 13540260557155038096
        Name: "Modern Weapon Barrel 01"
        Transform {
          Location {
            X: 40.7471695
            Y: -16.5739212
            Z: 27.0484867
          }
          Rotation {
            Pitch: -25.3760986
            Yaw: 161.173553
            Roll: -3.31665039
          }
          Scale {
            X: 0.852381766
            Y: 2.6698668
            Z: 2.66986609
          }
        }
        ParentId: 16727033510310367053
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 8000444647329274618
            }
          }
        }
        Collidable_v2 {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        Visible_v2 {
          Value: "mc:evisibilitysetting:inheritfromparent"
        }
        CoreMesh {
          MeshAsset {
            Id: 2817890560817570586
          }
          Teams {
            IsTeamCollisionEnabled: true
            IsEnemyCollisionEnabled: true
          }
          EnableCameraCollision: true
          StaticMesh {
            Physics {
            }
          }
        }
      }
      Objects {
        Id: 6925677656987288934
        Name: "Eye"
        Transform {
          Location {
          }
          Rotation {
          }
          Scale {
            X: 1
            Y: 1
            Z: 1
          }
        }
        ParentId: 1682716927276224940
        ChildIds: 5041464807408407737
        Collidable_v2 {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        Visible_v2 {
          Value: "mc:evisibilitysetting:inheritfromparent"
        }
        Folder {
          IsGroup: true
        }
      }
      Objects {
        Id: 5041464807408407737
        Name: "Lense - Half"
        Transform {
          Location {
            X: 9.67197609
            Y: -4.51684713
            Z: 6.03781128
          }
          Rotation {
            Pitch: 80.2171555
            Yaw: 8.57831573
            Roll: -145.398911
          }
          Scale {
            X: 0.0713461116
            Y: 0.0713461116
            Z: 0.0713461116
          }
        }
        ParentId: 6925677656987288934
        ChildIds: 1633724430763693529
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 5107913394006182853
            }
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:color"
            Color {
              R: 0.587
              G: 0.587
              B: 0.587
              A: 1
            }
          }
        }
        Collidable_v2 {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        Visible_v2 {
          Value: "mc:evisibilitysetting:inheritfromparent"
        }
        CoreMesh {
          MeshAsset {
            Id: 4768974327810390069
          }
          Teams {
            IsTeamCollisionEnabled: true
            IsEnemyCollisionEnabled: true
          }
          EnableCameraCollision: true
          StaticMesh {
            Physics {
            }
          }
        }
      }
      Objects {
        Id: 1633724430763693529
        Name: "Ring"
        Transform {
          Location {
            Z: -0.784591675
          }
          Rotation {
          }
          Scale {
            X: 1.12484789
            Y: 1.12484789
            Z: 1.12484789
          }
        }
        ParentId: 5041464807408407737
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 8000444647329274618
            }
          }
        }
        Collidable_v2 {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        Visible_v2 {
          Value: "mc:evisibilitysetting:inheritfromparent"
        }
        CoreMesh {
          MeshAsset {
            Id: 46061843978868412
          }
          Teams {
            IsTeamCollisionEnabled: true
            IsEnemyCollisionEnabled: true
          }
          EnableCameraCollision: true
          StaticMesh {
            Physics {
            }
          }
        }
      }
      Objects {
        Id: 5736255134202682541
        Name: "Eye"
        Transform {
          Location {
          }
          Rotation {
          }
          Scale {
            X: 1
            Y: 1
            Z: 1
          }
        }
        ParentId: 1682716927276224940
        ChildIds: 4437384320530659653
        Collidable_v2 {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        Visible_v2 {
          Value: "mc:evisibilitysetting:inheritfromparent"
        }
        Folder {
          IsGroup: true
        }
      }
      Objects {
        Id: 4437384320530659653
        Name: "Lense - Half"
        Transform {
          Location {
            X: 9.67201
            Y: 4.51684046
            Z: 6.03781128
          }
          Rotation {
            Pitch: 80.2171783
            Yaw: -8.57835197
            Roll: 145.399292
          }
          Scale {
            X: 0.0713461116
            Y: 0.0713461116
            Z: 0.0713461116
          }
        }
        ParentId: 5736255134202682541
        ChildIds: 10731285259234170834
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 5107913394006182853
            }
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:color"
            Color {
              R: 0.587
              G: 0.587
              B: 0.587
              A: 1
            }
          }
        }
        Collidable_v2 {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        Visible_v2 {
          Value: "mc:evisibilitysetting:inheritfromparent"
        }
        CoreMesh {
          MeshAsset {
            Id: 4768974327810390069
          }
          Teams {
            IsTeamCollisionEnabled: true
            IsEnemyCollisionEnabled: true
          }
          EnableCameraCollision: true
          StaticMesh {
            Physics {
            }
          }
        }
      }
      Objects {
        Id: 10731285259234170834
        Name: "Ring"
        Transform {
          Location {
            Z: -0.784591675
          }
          Rotation {
          }
          Scale {
            X: 1.12484789
            Y: 1.12484789
            Z: 1.12484789
          }
        }
        ParentId: 4437384320530659653
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 8000444647329274618
            }
          }
        }
        Collidable_v2 {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        Visible_v2 {
          Value: "mc:evisibilitysetting:inheritfromparent"
        }
        CoreMesh {
          MeshAsset {
            Id: 46061843978868412
          }
          Teams {
            IsTeamCollisionEnabled: true
            IsEnemyCollisionEnabled: true
          }
          EnableCameraCollision: true
          StaticMesh {
            Physics {
            }
          }
        }
      }
      Objects {
        Id: 8811737386126661512
        Name: "Strap"
        Transform {
          Location {
            X: 5.73887157
            Y: -7.84417725
            Z: 8.10630798
          }
          Rotation {
          }
          Scale {
            X: 1
            Y: 1
            Z: 1
          }
        }
        ParentId: 1682716927276224940
        ChildIds: 6714242559244013908
        ChildIds: 15074137631222390993
        Collidable_v2 {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        Visible_v2 {
          Value: "mc:evisibilitysetting:inheritfromparent"
        }
        Folder {
          IsGroup: true
        }
      }
      Objects {
        Id: 6714242559244013908
        Name: "Prism - 6-Sided Half"
        Transform {
          Location {
          }
          Rotation {
            Pitch: 15.724556
            Yaw: -168.320709
            Roll: -95.3311157
          }
          Scale {
            X: 0.103520609
            Y: 0.0939284787
            Z: 0.00519162789
          }
        }
        ParentId: 8811737386126661512
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 14582790818618070150
            }
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:color"
            Color {
              R: 1
              G: 1
              B: 1
              A: 1
            }
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:smart"
            Bool: false
          }
        }
        Collidable_v2 {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        Visible_v2 {
          Value: "mc:evisibilitysetting:inheritfromparent"
        }
        CoreMesh {
          MeshAsset {
            Id: 18444090978187379217
          }
          Teams {
            IsTeamCollisionEnabled: true
            IsEnemyCollisionEnabled: true
          }
          EnableCameraCollision: true
          StaticMesh {
            Physics {
            }
          }
        }
      }
      Objects {
        Id: 15074137631222390993
        Name: "Computer Stand"
        Transform {
          Location {
            X: -5.26313639
            Y: -0.666806936
            Z: 1.41711426
          }
          Rotation {
            Pitch: 73.6307907
            Yaw: 31.1013699
            Roll: -73.8914719
          }
          Scale {
            X: 0.0761942044
            Y: 0.0857850537
            Z: 0.0857850537
          }
        }
        ParentId: 8811737386126661512
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 14582790818618070150
            }
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:smart"
            Bool: false
          }
        }
        Collidable_v2 {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        Visible_v2 {
          Value: "mc:evisibilitysetting:inheritfromparent"
        }
        CoreMesh {
          MeshAsset {
            Id: 16612786956001738962
          }
          Teams {
            IsTeamCollisionEnabled: true
            IsEnemyCollisionEnabled: true
          }
          EnableCameraCollision: true
          StaticMesh {
            Physics {
            }
          }
        }
      }
      Objects {
        Id: 14808784805381333655
        Name: "Strap"
        Transform {
          Location {
            X: 5.7388773
            Y: 7.54800034
            Z: 8.10630798
          }
          Rotation {
          }
          Scale {
            X: 1
            Y: 1
            Z: 1
          }
        }
        ParentId: 1682716927276224940
        ChildIds: 17270348093827649196
        ChildIds: 22365482896449601
        Collidable_v2 {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        Visible_v2 {
          Value: "mc:evisibilitysetting:inheritfromparent"
        }
        Folder {
          IsGroup: true
        }
      }
      Objects {
        Id: 17270348093827649196
        Name: "Prism - 6-Sided Half"
        Transform {
          Location {
          }
          Rotation {
            Pitch: 15.3361921
            Yaw: 166.528931
            Roll: -86.4157486
          }
          Scale {
            X: 0.103520609
            Y: 0.0939284787
            Z: 0.00519162789
          }
        }
        ParentId: 14808784805381333655
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 14582790818618070150
            }
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:color"
            Color {
              R: 1
              G: 1
              B: 1
              A: 1
            }
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:smart"
            Bool: false
          }
        }
        Collidable_v2 {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        Visible_v2 {
          Value: "mc:evisibilitysetting:inheritfromparent"
        }
        CoreMesh {
          MeshAsset {
            Id: 18444090978187379217
          }
          Teams {
            IsTeamCollisionEnabled: true
            IsEnemyCollisionEnabled: true
          }
          EnableCameraCollision: true
          StaticMesh {
            Physics {
            }
          }
        }
      }
      Objects {
        Id: 22365482896449601
        Name: "Computer Stand"
        Transform {
          Location {
            X: -5.20403814
            Y: 0.850129783
            Z: 1.40815735
          }
          Rotation {
            Pitch: -74.5322495
            Yaw: 151.180618
            Roll: -77.6980057
          }
          Scale {
            X: 0.0761942044
            Y: 0.0857850537
            Z: 0.0857850537
          }
        }
        ParentId: 14808784805381333655
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 14582790818618070150
            }
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:smart"
            Bool: false
          }
        }
        Collidable_v2 {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        Visible_v2 {
          Value: "mc:evisibilitysetting:inheritfromparent"
        }
        CoreMesh {
          MeshAsset {
            Id: 16612786956001738962
          }
          Teams {
            IsTeamCollisionEnabled: true
            IsEnemyCollisionEnabled: true
          }
          EnableCameraCollision: true
          StaticMesh {
            Physics {
            }
          }
        }
      }
      Objects {
        Id: 13907608863814447820
        Name: "Strap"
        Transform {
          Location {
            X: 7.65324211
            Y: 0.07290373
            Z: 15.5765839
          }
          Rotation {
            Pitch: -25.4313965
            Yaw: -14.5846252
            Roll: -76.057251
          }
          Scale {
            X: 1
            Y: 1
            Z: 1
          }
        }
        ParentId: 1682716927276224940
        ChildIds: 8009170115437988764
        ChildIds: 5138362464588563920
        ChildIds: 10272147543936528546
        Collidable_v2 {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        Visible_v2 {
          Value: "mc:evisibilitysetting:inheritfromparent"
        }
        Folder {
          IsGroup: true
        }
      }
      Objects {
        Id: 8009170115437988764
        Name: "Computer Stand"
        Transform {
          Location {
            X: -7.61901855
            Y: 0.408325911
            Z: 1.84644175
          }
          Rotation {
            Pitch: -73.3781433
            Yaw: 140.040359
            Roll: -55.615387
          }
          Scale {
            X: 0.0761942044
            Y: 0.0857850537
            Z: 0.0857850537
          }
        }
        ParentId: 13907608863814447820
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 14582790818618070150
            }
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:smart"
            Bool: false
          }
        }
        Collidable_v2 {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        Visible_v2 {
          Value: "mc:evisibilitysetting:inheritfromparent"
        }
        CoreMesh {
          MeshAsset {
            Id: 16612786956001738962
          }
          Teams {
            IsTeamCollisionEnabled: true
            IsEnemyCollisionEnabled: true
          }
          EnableCameraCollision: true
          StaticMesh {
            Physics {
            }
          }
        }
      }
      Objects {
        Id: 5138362464588563920
        Name: "Pipe - Quarter Wedge Thin"
        Transform {
          Location {
            X: -0.368980885
            Y: -3.4157362
            Z: -2.48100019
          }
          Rotation {
            Pitch: -66.3105774
            Yaw: 120.424164
            Roll: 53.0527039
          }
          Scale {
            X: 0.0876084194
            Y: 0.0876084194
            Z: 0.0876084194
          }
        }
        ParentId: 13907608863814447820
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 15238659217961914194
            }
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:smart"
            Bool: false
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:color"
            Color {
              R: 1
              G: 1
              B: 1
              A: 1
            }
          }
        }
        Collidable_v2 {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        Visible_v2 {
          Value: "mc:evisibilitysetting:inheritfromparent"
        }
        CoreMesh {
          MeshAsset {
            Id: 5949268049384519735
          }
          Teams {
            IsTeamCollisionEnabled: true
            IsEnemyCollisionEnabled: true
          }
          EnableCameraCollision: true
          StaticMesh {
            Physics {
            }
          }
        }
      }
      Objects {
        Id: 10272147543936528546
        Name: "Pipe - Quarter Wedge Thin"
        Transform {
          Location {
            X: 0.435699463
            Y: -3.96810532
            Z: 1.49649048
          }
          Rotation {
            Pitch: 74.166008
            Yaw: 32.8519974
            Roll: 33.9520607
          }
          Scale {
            X: 0.0876084194
            Y: -0.088
            Z: 0.0876084194
          }
        }
        ParentId: 13907608863814447820
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 15238659217961914194
            }
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:smart"
            Bool: false
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:color"
            Color {
              R: 1
              G: 1
              B: 1
              A: 1
            }
          }
        }
        Collidable_v2 {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        Visible_v2 {
          Value: "mc:evisibilitysetting:inheritfromparent"
        }
        CoreMesh {
          MeshAsset {
            Id: 5949268049384519735
          }
          Teams {
            IsTeamCollisionEnabled: true
            IsEnemyCollisionEnabled: true
          }
          EnableCameraCollision: true
          StaticMesh {
            Physics {
            }
          }
        }
      }
    }
    Assets {
      Id: 5489775416547967874
      Name: "Hemisphere"
      PlatformAssetType: 1
      PrimaryAsset {
        AssetType: "StaticMeshAssetRef"
        AssetId: "sm_hemisphere_001"
      }
    }
    Assets {
      Id: 13952980983583304407
      Name: "Ring - Quarter Thin"
      PlatformAssetType: 1
      PrimaryAsset {
        AssetType: "StaticMeshAssetRef"
        AssetId: "sm_quarter_torus_001"
      }
    }
    Assets {
      Id: 8414945924149838582
      Name: "Pyramid - 5-Sided Truncated Polished"
      PlatformAssetType: 1
      PrimaryAsset {
        AssetType: "StaticMeshAssetRef"
        AssetId: "sm_pyramid_fivesided_truncated_hq_001"
      }
    }
    Assets {
      Id: 12888726374622842928
      Name: "Modern Weapon - Disc 01"
      PlatformAssetType: 1
      PrimaryAsset {
        AssetType: "StaticMeshAssetRef"
        AssetId: "sm_weap_modern_disc_001"
      }
    }
    Assets {
      Id: 12486469380190802843
      Name: "Grenade Canister 02"
      PlatformAssetType: 1
      PrimaryAsset {
        AssetType: "StaticMeshAssetRef"
        AssetId: "sm_weapons_grenade_indented_001"
      }
    }
    Assets {
      Id: 2817890560817570586
      Name: "Modern Weapon Barrel 01"
      PlatformAssetType: 1
      PrimaryAsset {
        AssetType: "StaticMeshAssetRef"
        AssetId: "sm_weap_modern_barrel_001"
      }
    }
    Assets {
      Id: 4768974327810390069
      Name: "Lense - Half"
      PlatformAssetType: 1
      PrimaryAsset {
        AssetType: "StaticMeshAssetRef"
        AssetId: "sm_half_lense_001"
      }
    }
    Assets {
      Id: 5107913394006182853
      Name: "Metal Chrome"
      PlatformAssetType: 2
      PrimaryAsset {
        AssetType: "MaterialAssetRef"
        AssetId: "chrome_001"
      }
    }
    Assets {
      Id: 46061843978868412
      Name: "Ring"
      PlatformAssetType: 1
      PrimaryAsset {
        AssetType: "StaticMeshAssetRef"
        AssetId: "sm_torus_004"
      }
    }
    Assets {
      Id: 18444090978187379217
      Name: "Prism - 6-Sided Half"
      PlatformAssetType: 1
      PrimaryAsset {
        AssetType: "StaticMeshAssetRef"
        AssetId: "sm_half_hexagon_001"
      }
    }
    Assets {
      Id: 14582790818618070150
      Name: "Asphalt 01"
      PlatformAssetType: 2
      PrimaryAsset {
        AssetType: "MaterialAssetRef"
        AssetId: "mi_gen_asphault_001"
      }
    }
    Assets {
      Id: 16612786956001738962
      Name: "Computer Stand"
      PlatformAssetType: 1
      PrimaryAsset {
        AssetType: "StaticMeshAssetRef"
        AssetId: "sm_urb_computer-stand_001"
      }
    }
    Assets {
      Id: 5949268049384519735
      Name: "Pipe - Quarter Wedge Thin"
      PlatformAssetType: 1
      PrimaryAsset {
        AssetType: "StaticMeshAssetRef"
        AssetId: "sm_quarter_pipe_wedge_002"
      }
    }
    PrimaryAssetId {
      AssetType: "None"
      AssetId: "None"
    }
  }
  Marketplace {
    Description: "When equipped grants the player a \"GasMask\" resource that can be used in combination with other gameplay elements."
  }
  SerializationVersion: 65
  DirectlyPublished: true
}
