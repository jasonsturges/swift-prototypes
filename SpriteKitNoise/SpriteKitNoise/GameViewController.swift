//
//  GameViewController.swift
//  SpriteKitNoise
//
//  Created by Jason Sturges on 11/7/15.
//  Copyright (c) 2015 Jason Sturges. All rights reserved.
//

import UIKit
import SpriteKit

class GameViewController: UIViewController {
    
    var scene: GameScene!
    var smoothness: CGFloat = 1.1
    var vector: Bool = false
    var grayscale: Bool = false
    
    @IBOutlet weak var smoothnessLabel: UILabel!
    @IBOutlet weak var grayscaleSwitch: UISwitch!
    
    @IBAction func smoothnessAction(_ sender: UISlider) {
        smoothnessLabel.text = String(format: "%.3f", sender.value)
        smoothness = CGFloat(sender.value)
        updateTexture()
    }
    
    @IBAction func vectorAction(_ sender: UISwitch) {
        vector = sender.isOn
        grayscaleSwitch.isEnabled = !sender.isOn
        updateTexture()
    }
    
    @IBAction func grayscaleAction(_ sender: UISwitch) {
        grayscale = sender.isOn
        updateTexture()
    }
    
    func updateTexture() {
        scene.changeNoise(smoothness: smoothness, isVector: vector, isGrayscale: grayscale)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()

        scene = GameScene(fileNamed:"GameScene")

        // Configure the view.
        let skView = self.view as! SKView
        skView.showsFPS = true
        skView.showsNodeCount = true
        skView.ignoresSiblingOrder = true
        
        /* Set the scale mode to scale to fit the window */
        scene.scaleMode = .aspectFill
        
        skView.presentScene(scene)
    }

    override var shouldAutorotate : Bool {
        return true
    }

    override var supportedInterfaceOrientations : UIInterfaceOrientationMask {
        if UIDevice.current.userInterfaceIdiom == .phone {
            return .allButUpsideDown
        } else {
            return .all
        }
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Release any cached data, images, etc that aren't in use.
    }

    override var prefersStatusBarHidden : Bool {
        return true
    }
}
