//
//  StarNode.swift
//  SpriteKitPhysics
//
//  Created by Jason Sturges on 7/27/16.
//  Copyright © 2016 Jason Sturges. All rights reserved.
//

import UIKit
import SpriteKit

class StarNode: SKSpriteNode {
    class func star(location: CGPoint) -> StarNode {
        let sprite = StarNode(imageNamed:"star.png")
        
        sprite.xScale = 0.25
        sprite.yScale = 0.25
        sprite.position = location
        
        sprite.physicsBody = SKPhysicsBody(texture: SKTexture(imageNamed: "star.png"), size: sprite.size)
        if let physics = sprite.physicsBody {
            physics.affectedByGravity = true
            physics.allowsRotation = true
            physics.dynamic = true;
            physics.linearDamping = 0.75
            physics.angularDamping = 0.75
            physics.restitution = 0.95
        }
        return sprite
    }
}