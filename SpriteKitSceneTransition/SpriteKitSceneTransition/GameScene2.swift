//
//  GameScene2.swift
//  SpriteKitSceneTransition
//
//  Created by Jason Sturges on 11/4/15.
//  Copyright © 2015 Jason Sturges. All rights reserved.
//

import SpriteKit

class GameScene2: SKScene {
    
    override func didMove(to view: SKView) {
        let sprite = SKSpriteNode(color: UIColor.gray, size: CGSize(width: 64, height: 64))
        sprite.name = "Previous Scene"
        sprite.position = CGPoint(x: 512, y: 384)
        
        self.addChild(sprite);
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        super.touchesBegan(touches, with: event)
        
        if let location = touches.first?.location(in: self) {
            let touchedNode = atPoint(location)
            
            if touchedNode.name == "Previous Scene" {
                let transition = SKTransition.crossFade(withDuration: 1)
                
                let nextScene = GameScene(size: scene!.size)
                nextScene.scaleMode = .aspectFill
                
                scene?.view?.presentScene(nextScene, transition: transition)
            }
        }
    }
    
}
