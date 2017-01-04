//
//  ViewController.swift
//  ImageFromURL
//
//  Created by Jason Sturges on 7/26/16.
//  Copyright © 2016 Jason Sturges. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var imageView: UIImageView!
    let imageUrl:URL = URL(string: "http://labs.jasonsturges.com/swift/assets/checkerboard.png")!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        DispatchQueue.global(qos: DispatchQoS.QoSClass.userInitiated).async {
            let data = try? Data(contentsOf: self.imageUrl)
            DispatchQueue.main.async(execute: {
                self.imageView.image = UIImage(data: data!)
            })
        }
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

}

