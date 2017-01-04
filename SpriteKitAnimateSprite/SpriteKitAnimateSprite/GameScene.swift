//
//  GameScene.swift
//  SpriteKitAnimateSprite
//
//  Created by Jason Sturges on 11/1/15.
//  Copyright (c) 2015 Jason Sturges. All rights reserved.
//

import SpriteKit

class GameScene: SKScene {
    
    var sprite:SKSpriteNode!
    
    override func didMove(to view: SKView) {
        sprite = SKSpriteNode(color: UIColor.orange, size: CGSize(width: 64, height: 64))
        sprite.position = CGPoint(x: 512, y: 384)
        
        self.addChild(sprite);
        
        animate();
    }
    
    func animate() {
        let action1:SKAction = SKAction.scale(to: 4, duration: 2.5)
        sprite.run(action1, completion: {
            let action2:SKAction = SKAction.scale(to: 1, duration: 2.5)
            self.sprite.run(action2)
        })
        
        let action3:SKAction = SKAction.rotate(byAngle: 6.28319, duration: 5)
        sprite.run(action3)
        
        let action4:SKAction = SKAction.colorize(with: UIColor.yellow, colorBlendFactor: 1, duration: 2.5)
        let action5:SKAction = SKAction.colorize(with: UIColor.orange, colorBlendFactor: 1, duration: 2.5)
        let sequence = SKAction.sequence([action4, action5])
        sprite.run(sequence, completion: {() -> Void in
            self.animate()
        }) 
    }
    
}
