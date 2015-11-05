//
//  PrimitiveScene.swift
//  SceneKitPrimitiveScene
//
//  Created by Jason Sturges on 11/4/15.
//  Copyright © 2015 Jason Sturges. All rights reserved.
//

import UIKit
import SceneKit

class PrimitiveScene: SCNScene {

    override init() {
        super.init()
        
        let cubeGeometry = SCNBox(width: 4, height: 4, length: 4, chamferRadius: 0)
        cubeGeometry.firstMaterial?.diffuse.contents = UIColor(red: 0.729, green: 0.722, blue: 0.424, alpha: 1.0)
        cubeGeometry.firstMaterial?.specular.contents = UIColor.whiteColor()
        cubeGeometry.firstMaterial?.shininess = 1.0
        
        let cubeNode = SCNNode(geometry: cubeGeometry)
        
        self.rootNode.addChildNode(cubeNode)
    }
    
    required init(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

}
