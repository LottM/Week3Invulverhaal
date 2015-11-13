//
//  story.swift
//  Week3MadLibs
//
//  Created by Lotte van der Molen on 13/11/15.
//  Copyright © 2015 Lotte van der Molen. All rights reserved.
//

import UIKit

class story: UIViewController {
    
    func loadText() {
        let filePath = NSBundle.mainBundle().pathForResource("Invulverhaal", ofType: "txt")
        
        // Read from file
        do {
            let content = try NSString(contentsOfFile: filePath!, encoding: NSUTF8StringEncoding)
            
            let words = content.componentsSeparatedByString("\n")
            
            for word in words {
                // Doe iets met 'word'
            }
            
        }
            
        catch {
            // Foutafhandeling
        }
    }

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
