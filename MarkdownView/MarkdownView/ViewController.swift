//
//  ViewController.swift
//  MarkdownView
//
//  Created by Jason Sturges on 7/25/16.
//  Copyright © 2016 Jason Sturges. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var webView: UIWebView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.

        do {
            let path = NSBundle.mainBundle().pathForResource("example", ofType: "md")
            let text = try String(contentsOfFile: path!, encoding: NSUTF8StringEncoding)
            
            var markdown = Markdown();
            let html:String = markdown.transform(text);
            
            webView.loadHTMLString(html, baseURL: nil)
        } catch let error  {
            print (error)
        }
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

