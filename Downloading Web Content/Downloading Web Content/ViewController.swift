//
//  ViewController.swift
//  Downloading Web Content
//
//  Created by Joe McCorison on 8/7/16.
//  Copyright © 2016 Joe McCorison. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var Webview: UIWebView!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        /*let url = URL(string: "https://www.stackoverflow.com")!
        
        //Webview.loadRequest(URLRequest(url: url))
    
        Webview.loadHTMLString("<h1>Test imbedded</h1>", baseURL: nil)
        */
        
        if let url = URL(string: "https://www.stackoverflow.com") {
            let request = NSMutableURLRequest(url: url)
            let task = URLSession.shared.dataTask(with: request as URLRequest) {
                data, response, error in
                
                // an error occured
                if (error != nil) {
                    print(error)
                } else {
                    if let unwrappedData = data {
                        let dataString = NSString(data: unwrappedData, encoding: String.Encoding.utf8.rawValue)
                        
                        print(dataString)
                        
                        // dispatch queue, forces return from thread
                        DispatchQueue.main.sync(execute: {
                            // process queue
                        })
                    }
                }
            }
            
            task.resume()
        }
        
        print("Async task")
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

}

