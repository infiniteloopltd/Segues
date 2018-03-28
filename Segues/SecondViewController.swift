//
//  SecondViewController.swift
//  Segues
//
//  Created by user909680 on 3/28/18.
//  Copyright © 2018 user909680. All rights reserved.
//

import UIKit

class SecondViewController: UIViewController {

    var textPassedViaSegue : String = ""
    
    @IBOutlet weak var dataLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        print("Second View Controller Loaded")
        dataLabel.text = textPassedViaSegue
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
