//
//  WordsViewController.swift
//  Week3MadLibs
//
//  Created by Lotte van der Molen on 11/11/15.
//  Copyright © 2015 Lotte van der Molen. All rights reserved.
//

import UIKit

class WordsViewController: UIViewController {
    
    @IBOutlet weak var userInput3: UITextField!
    
    // Remember the input, even after quitting the game.
    let defaults = NSUserDefaults.standardUserDefaults()
    defaults.setObject(userInput3, forKey)
    
    // Append data from user to array where all the data is stored.
    if defaults.arrayForKey("userInput3") != nil {
    var temp = defaults.arrayForKey("userInput3")
    temp.append(dataFromPage4ViewControl)
    defaults.setObject(temp, forKey: "userInput3")
    }
    else {
    defaults.setObject(dataFromPage4ViewController, forKey: "userInput3")
    }
    
    // Get data from user.
    let userInput = defaults.arrayForKey("userInput3")
    let userInputDefaults.text = userInput3.descriptionOverride
    
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
        let FinalViewController : Page4ViewController = segue.destinationViewController as! Page4ViewController
        FinalViewController.labelFirstWord = userInput3.text!
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
