//
//  GameScene.swift
//  SpriteKitPhysics
//
//  Created by Jason Sturges on 7/26/16.
//  Copyright (c) 2016 Jason Sturges. All rights reserved.
//

import SpriteKit

class GameScene: SKScene {
    override func didMoveToView(view: SKView) {
        /* Setup your scene here */
        
        self.physicsWorld.gravity = CGVectorMake(0.0, -4.9)
    }
    
    override func touchesBegan(touches: Set<UITouch>, withEvent event: UIEvent?) {
       /* Called when a touch begins */
        
        for touch in touches {
            let sprite = StarNode.star(touch.locationInNode(self))
            self.addChild(sprite)

        }
    }
   
    override func update(currentTime: CFTimeInterval) {
        /* Called before each frame is rendered */
    }
}
