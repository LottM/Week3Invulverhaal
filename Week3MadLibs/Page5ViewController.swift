//
//  Page5ViewController.swift
//  Week3MadLibs
//
//  Created by Lotte van der Molen on 16/11/15.
//  Copyright © 2015 Lotte van der Molen. All rights reserved.
//

import UIKit

class Page5ViewController: UIViewController {

    @IBOutlet weak var userInput: UITextField!
    
    // Remember the input, even after quitting the game.
    let defaults = NSUserDefaults.standardUserDefaults()
    defaults.setObject(userInput4, forKey)
    
    // Append data from user to array where all the data is stored.
    if defaults.arrayForKey("userInput4") != nil {
        var temp = defaults.arrayForKey("userInput4")
        temp.append(dataFromPage5ViewControl)
        defaults.setObject(temp, forKey: "userInput4")
    }
    else {
        defaults.setObject(dataFromPage5ViewController, forKey: "userInput")
    }
    
    // Get data from user.
    let userInput = defaults.arrayForKey("userInput4")
    let userInputDefaults.text = userInput4.descriptionOverride
    
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
        let FinalViewController : Page5ViewController = segue.destinationViewController as! Page5ViewController
        FinalViewController.labelFirstWord = userInput.text!
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
