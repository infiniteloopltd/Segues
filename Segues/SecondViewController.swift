//
//  SecondViewController.swift
//  Segues
//
//  Created by user909680 on 3/28/18.
//  Copyright © 2018 user909680. All rights reserved.
//

import UIKit

class SecondViewController: UIViewController {

    // delegate can defined as type ViewController
    // but this is less flexible, in the case that
    // this could be returning to multiple possible view controllers
    var delegate : Callable? = nil
    
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
    
    @IBAction func backButtonPressed(_ sender: Any) {
        delegate!.calledFromOtherViewController(
            text: "ok, this can be done without ptorocols"
        )
        dismiss(animated: true, completion: nil)
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
