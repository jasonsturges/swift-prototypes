//
//  GameScene.swift
//  SpriteKit2dDrawing
//
//  Created by Jason Sturges on 1/13/17.
//  Copyright © 2017 Jason Sturges. All rights reserved.
//

import SpriteKit
import GameplayKit

class GameScene: SKScene {
    
    private var drawingNode: SKShapeNode?

    override func didMove(to view: SKView) {
        drawingNode = childNode(withName: "//drawingNode") as? SKShapeNode
        
        let path = CGMutablePath()
        path.move(to: CGPoint(x: 0, y: 0))
        path.addLine(to: CGPoint(x: size.width, y: size.height))
        
        drawingNode?.path = path
        drawingNode?.strokeColor = UIColor.white
        drawingNode?.lineWidth = 2
    }
    
    
    func touchDown(atPoint pos : CGPoint) {
    }
    
    func touchMoved(toPoint pos : CGPoint) {
    }
    
    func touchUp(atPoint pos : CGPoint) {
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        for t in touches { self.touchDown(atPoint: t.location(in: self)) }
    }
    
    override func touchesMoved(_ touches: Set<UITouch>, with event: UIEvent?) {
        for t in touches { self.touchMoved(toPoint: t.location(in: self)) }
    }
    
    override func touchesEnded(_ touches: Set<UITouch>, with event: UIEvent?) {
        for t in touches { self.touchUp(atPoint: t.location(in: self)) }
    }
    
    override func touchesCancelled(_ touches: Set<UITouch>, with event: UIEvent?) {
        for t in touches { self.touchUp(atPoint: t.location(in: self)) }
    }
    
    
    override func update(_ currentTime: TimeInterval) {
        // Called before each frame is rendered
    }
}
