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
    let imageUrl:NSURL = NSURL(string: "http://labs.jasonsturges.com/swift/assets/checkerboard.png")!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        dispatch_async(dispatch_get_global_queue(DISPATCH_QUEUE_PRIORITY_DEFAULT, 0)) {
            let data = NSData(contentsOfURL: self.imageUrl)
            dispatch_async(dispatch_get_main_queue(), {
                self.imageView.image = UIImage(data: data!)
            })
        }
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

}

