//
//  GameScene2.swift
//  SpriteKitSceneTransition
//
//  Created by Jason Sturges on 11/4/15.
//  Copyright © 2015 Jason Sturges. All rights reserved.
//

import SpriteKit

class GameScene2: SKScene {
    
    override func didMoveToView(view: SKView) {
        let sprite = SKSpriteNode(color: UIColor.grayColor(), size: CGSize(width: 64, height: 64))
        sprite.name = "Previous Scene"
        sprite.position = CGPoint(x: 512, y: 384)
        
        self.addChild(sprite);
    }
    
    override func touchesBegan(touches: Set<UITouch>, withEvent event: UIEvent?) {
        super.touchesBegan(touches, withEvent: event)
        
        if let location = touches.first?.locationInNode(self) {
            let touchedNode = nodeAtPoint(location)
            
            if touchedNode.name == "Previous Scene" {
                let transition = SKTransition.crossFadeWithDuration(1)
                
                let nextScene = GameScene(size: scene!.size)
                nextScene.scaleMode = .AspectFill
                
                scene?.view?.presentScene(nextScene, transition: transition)
            }
        }
    }
    
}