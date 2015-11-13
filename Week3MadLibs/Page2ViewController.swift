//
//  Page2ViewController.swift
//  Week3MadLibs
//
//  Created by Lotte van der Molen on 11/11/15.
//  Copyright © 2015 Lotte van der Molen. All rights reserved.
//

import UIKit

class Page2ViewController: UIViewController {

    @IBOutlet weak var userInput: UITextField!
    
    // Onthoud alle waarden, ook na afsluiten.
    let defaults = NSUserDefaults.standardUserDefaults()
    
    if defaults.arrayForKey("userInput") != nil {
        var temp = defaults.arrayForKey("userInput")
        temp.append(dataFromPage2ViewControl)
        defaults.setObject(temp, forKey: "userInput")
    }
    else {
        defaults.setObject(dataFromPage2ViewController, forKey: "userInput")
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
