//
//  GameScene.swift
//  SpriteKitPhysics
//
//  Created by Jason Sturges on 7/26/16.
//  Copyright (c) 2016 Jason Sturges. All rights reserved.
//

import SpriteKit

class GameScene: SKScene {
    override func didMove(to view: SKView) {
        /* Setup your scene here */
        
        self.physicsWorld.gravity = CGVector(dx: 0.0, dy: -4.9)
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
       /* Called when a touch begins */
        
        for touch in touches {
            let sprite = StarNode.star(touch.location(in: self))
            self.addChild(sprite)

        }
    }
   
    override func update(_ currentTime: TimeInterval) {
        /* Called before each frame is rendered */
    }
}
