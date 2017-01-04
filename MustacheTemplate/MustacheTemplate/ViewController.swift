//
//  ViewController.swift
//  MustacheTemplate
//
//  Created by Jason Sturges on 1/4/17.
//  Copyright © 2017 Jason Sturges. All rights reserved.
//

import Cocoa
import Mustache

class ViewController: NSViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        do {
            // Load the `document.mustache` resource of the main bundle
            let template = try Template(named: "document")
            
            // Let template format dates with `{{format(...)}}`
            let dateFormatter = DateFormatter();
            dateFormatter.dateStyle = .medium
            template.register(dateFormatter, forKey: "format")
            
            // The rendered data
            let data: [String: Any] = [
                "name": "Arthur",
                "date": Date(),
                "realDate": Date().addingTimeInterval(60*60*24*3),
                "late": true
            ]
            
            let rendering = try template.render(data)
            print("\(rendering)")
        } catch let error as MustacheError {
            print("MustacheError: \(error.description)")
        } catch {
            print("Unknown error")
        }
    }

    override var representedObject: Any? {
        didSet {
        // Update the view, if already loaded.
        }
    }


}

