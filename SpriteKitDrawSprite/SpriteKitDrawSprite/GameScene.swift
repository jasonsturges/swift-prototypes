//
//  GameScene.swift
//  SpriteKitDrawSprite
//
//  Created by Jason Sturges on 11/1/15.
//  Copyright (c) 2015 Jason Sturges. All rights reserved.
//

import SpriteKit

class GameScene: SKScene {
    
    override func didMoveToView(view: SKView) {
        let sprite = SKSpriteNode(color: UIColor.orangeColor(), size: CGSize(width: 64, height: 64))
        sprite.position = CGPoint(x: 512, y: 384)
        
        self.addChild(sprite);
    }
    
}
