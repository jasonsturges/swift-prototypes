//
//  SkyboxScene.swift
//  SceneKitSkybox
//
//  Created by Jason Sturges on 11/5/15.
//  Copyright © 2015 Jason Sturges. All rights reserved.
//

import UIKit
import SceneKit

class SkyboxScene: SCNScene {
    
    override init() {
        super.init()
        
        background.contents = [
            "art.scnassets/right.jpg",
            "art.scnassets/left.jpg",
            "art.scnassets/top.jpg",
            "art.scnassets/bottom.jpg",
            "art.scnassets/back.jpg",
            "art.scnassets/front.jpg",
        ]
        
        let torusGeometry = SCNTorus(ringRadius: 4, pipeRadius: 1)
        torusGeometry.firstMaterial?.diffuse.contents = UIColor.blackColor()
        torusGeometry.firstMaterial?.specular.contents = UIColor.whiteColor()
        torusGeometry.firstMaterial?.shininess = 100.0
        torusGeometry.firstMaterial?.reflective.contents = background.contents
        
        let torusNode = SCNNode(geometry: torusGeometry)
        
        self.rootNode.addChildNode(torusNode)
    }
    
    required init(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
}
