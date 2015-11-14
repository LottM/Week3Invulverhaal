//
//  ViewController.swift
//  Week3MadLibs
//
//  Created by Lotte van der Molen on 09/11/15.
//  Copyright © 2015 Lotte van der Molen. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    func loadText() {
        let filePath = NSBundle.mainBundle().pathForResource("Invulverhaal", ofType: "txt")
        
        var content = String?()
        
        // Read from file.
        do {
            let content = try NSString(contentsOfFile: filePath, encoding: NSUTF8StringEcoding)
            
            let words = content.componentsSeperatedByString("\n")
            
            for word in words {
               words.append(word)
            }
        }
        // Report an error.
        catch {
            print("Something went wrong!")
        }
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

}

