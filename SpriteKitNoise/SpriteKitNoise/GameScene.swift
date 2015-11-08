//
//  GameScene.swift
//  SpriteKitNoise
//
//  Created by Jason Sturges on 11/7/15.
//  Copyright (c) 2015 Jason Sturges. All rights reserved.
//

import SpriteKit

class GameScene: SKScene {
    
    var noiseTexture:SKTexture!
    var noiseSprite:SKSpriteNode!
    
    override func didMoveToView(view: SKView) {
        noiseTexture = SKTexture(noiseWithSmoothness: 1.1, size: CGSize(width: 1024, height: 768), grayscale: false)
        //noiseTexture = SKTexture(vectorNoiseWithSmoothness: 1.1, size: CGSize(width: 1024, height: 768))
        noiseSprite = SKSpriteNode(texture: noiseTexture)
        noiseSprite.position = CGPoint(x: 512, y: 384)
        
        addChild(noiseSprite)
    }

}
