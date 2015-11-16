//
//  FinalViewController.swift
//  Week3MadLibs
//
//  Created by Lotte van der Molen on 15/11/15.
//  Copyright © 2015 Lotte van der Molen. All rights reserved.
//

import UIKit

class FinalViewController: UIViewController {
    @IBOutlet weak var labelFirstWord: UILabel!
    @IBOutlet weak var labelSecondWord: UILabel!
    @IBOutlet weak var labelThirdWord: UILabel!
    @IBOutlet weak var labelFourthWord: UILabel!
    @IBOutlet weak var labelFifthWord: UILabel!
    
    var textFirstWord = String()
    var textSecondWord = String()
    var textThirdWord = String()
    var textFourthWord = String()
    var textFifthWord = String()

    override func viewDidLoad() {
        super.viewDidLoad()
        
        labelFirstWord.text = textFirstWord
        labelSecondWord.text = textSecondWord
        labelThirdWord.text = textThirdWord
        labelFourthWord.text = textFourthWord
        labelFifthWord.text = textFifthWord

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
