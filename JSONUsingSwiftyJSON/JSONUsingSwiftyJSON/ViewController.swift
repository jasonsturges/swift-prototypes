//
//  ViewController.swift
//  JSONUsingSwiftyJSON
//
//  Created by Jason Sturges on 10/30/15.
//  Copyright © 2015 Jason Sturges. All rights reserved.
//

import UIKit
import SwiftyJSON

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        let path = Bundle.main.path(forResource: "data", ofType: "json")
        let data = try? Data(contentsOf: URL(fileURLWithPath: path!))
        let json = JSON(data: data!)
        
        print("Type: \(json["type"])")
        print("Name: \(json["properties"]["name"])")
        print("Coordinates: ")
        
        for (key, subjson) in json["geometry"]["coordinates"] {
            print("   \(key): \(subjson)")
        }
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

