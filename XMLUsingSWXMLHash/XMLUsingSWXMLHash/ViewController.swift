//
//  ViewController.swift
//  XMLUsingSWXMLHash
//
//  Created by Jason Sturges on 10/30/15.
//  Copyright © 2015 Jason Sturges. All rights reserved.
//

import UIKit
import SWXMLHash

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        let path = NSBundle.mainBundle().pathForResource("data", ofType: "xml")
        let data = NSData(contentsOfFile: path!)
        let xml = SWXMLHash.parse(data!)
        
        print(xml["root"]["catalog"]["book"][1].element?.attributes["id"])
        
        for elem in xml["root"]["catalog"]["book"] {
            print(elem["genre"].element!.text!)
        }
        
        do {
            try print(xml["root"]["catalog"]["book"].withAttr("id", "123")["author"].element!.text!)
        } catch let error as XMLIndexer.Error {
            // error is an XMLIndexer.Error instance that you can deal with
            print("An XMLIndexer.Error occurred: \(error.description)")
        } catch {
            print("An unknown error occurred")
        }

    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

