//
//  2ViewController.swift
//  Week3MadLibs
//
//  Created by Lotte van der Molen on 13/11/15.
//  Copyright © 2015 Lotte van der Molen. All rights reserved.
//

import UIKit

class _ViewController: UIViewController {

    override func viewDidLoad() {
        
        @IBOutlet weak var userInput2: UITextField!
        
        let defaults = NSUserDefaults.standardUserDefaults()
        defaults.setObject(userInput2, forKey)
        
        // Append data from user to array where all the data is stored.
        if defaults.arrayForKey("userInput") != nil {
            var temp = defaults.arrayForKey("userInput")
            temp.append(dataFromPage3ViewControl)
            defaults.setObject(temp, forKey: "userInput")
        }
        else {
            defaults.setObject(dataFromPage3ViewController, forKey: "userInput")
        }
        
        // Get data from user.
        let userInput2 = defaults.arrayForKey("userInput2")
        let userInputDefaults.text = userInput2.descriptionOverride
        
        override func viewDidLoad() {
            super.viewDidLoad()
            super.viewDidLoad()
            
            // Do any additional setup after loading the view.
        }
        
        override func didReceiveMemoryWarning() {
            super.didReceiveMemoryWarning()
            // Dispose of any resources that can be recreated.
        }
        
        override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
            let FinalViewController : Page3ViewController = segue.destinationViewController as! Page3ViewController
            FinalViewController.labelSecondWord = userInput2.text!
        }
        
        
        super.viewDidLoad()

        // Do any additional setup after loading the view.
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
