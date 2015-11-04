//
//  GameScene.swift
//  SpriteKitSceneTransition
//
//  Created by Jason Sturges on 11/4/15.
//  Copyright (c) 2015 Jason Sturges. All rights reserved.
//

import SpriteKit

class GameScene: SKScene {
    
    override func didMoveToView(view: SKView) {
        let sprite = SKSpriteNode(color: UIColor.orangeColor(), size: CGSize(width: 64, height: 64))
        sprite.name = "Next Scene"
        sprite.position = CGPoint(x: 512, y: 384)
        
        self.addChild(sprite);
        
        self.backgroundColor = UIColor.grayColor()
    }
    
    override func touchesBegan(touches: Set<UITouch>, withEvent event: UIEvent?) {
        super.touchesBegan(touches, withEvent: event)
        
        if let location = touches.first?.locationInNode(self) {
            let touchedNode = nodeAtPoint(location)
            
            if touchedNode.name == "Next Scene" {
                let transition = SKTransition.doorwayWithDuration(1)
                
                let nextScene = GameScene2(size: scene!.size)
                nextScene.scaleMode = .AspectFill
                
                scene?.view?.presentScene(nextScene, transition: transition)
            }
        }
    }

}
