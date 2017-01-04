//
//  GameScene.swift
//  SpriteKitSceneTransition
//
//  Created by Jason Sturges on 11/4/15.
//  Copyright (c) 2015 Jason Sturges. All rights reserved.
//

import SpriteKit

class GameScene: SKScene {
    
    override func didMove(to view: SKView) {
        let sprite = SKSpriteNode(color: UIColor.orange, size: CGSize(width: 64, height: 64))
        sprite.name = "Next Scene"
        sprite.position = CGPoint(x: 512, y: 384)
        
        self.addChild(sprite);
        
        self.backgroundColor = UIColor.gray
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        super.touchesBegan(touches, with: event)
        
        if let location = touches.first?.location(in: self) {
            let touchedNode = atPoint(location)
            
            if touchedNode.name == "Next Scene" {
                let transition = SKTransition.doorway(withDuration: 1)
                
                let nextScene = GameScene2(size: scene!.size)
                nextScene.scaleMode = .aspectFill
                
                scene?.view?.presentScene(nextScene, transition: transition)
            }
        }
    }

}
