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
    
    override func didMoveToView(view: SKView) {
        sprite = SKSpriteNode(color: UIColor.orangeColor(), size: CGSize(width: 64, height: 64))
        sprite.position = CGPoint(x: 512, y: 384)
        
        self.addChild(sprite);
        
        animate();
    }
    
    func animate() {
        let action1:SKAction = SKAction.scaleTo(4, duration: 2.5)
        sprite.runAction(action1, completion: {
            let action2:SKAction = SKAction.scaleTo(1, duration: 2.5)
            self.sprite.runAction(action2)
        })
        
        let action3:SKAction = SKAction.rotateByAngle(6.28319, duration: 5)
        sprite.runAction(action3)
        
        let action4:SKAction = SKAction.colorizeWithColor(UIColor.yellowColor(), colorBlendFactor: 1, duration: 2.5)
        let action5:SKAction = SKAction.colorizeWithColor(UIColor.orangeColor(), colorBlendFactor: 1, duration: 2.5)
        let sequence = SKAction.sequence([action4, action5])
        sprite.runAction(sequence) {() -> Void in
            self.animate()
        }
    }
    
}
