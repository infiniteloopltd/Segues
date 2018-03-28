//
//  ViewController.swift
//  Segues
//
//  Created by user909680 on 3/28/18.
//  Copyright © 2018 user909680. All rights reserved.
//

import UIKit

protocol Callable
{
    func calledFromOtherViewController(text : String);
}

class ViewController: UIViewController, Callable {

    func calledFromOtherViewController(text : String)
    {
        textData.text = text
    }
    
    @IBOutlet weak var textData: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        print("First View Controller Loaded")
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func goButtonClicked(_ sender: Any) {
        performSegue(withIdentifier: "goToSecondScreen", sender: self)
    }
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let dest  = segue.destination as! SecondViewController
        dest.delegate = self
        dest.textPassedViaSegue = textData.text!
    }
    
    @IBAction func goBlackPressed(_ sender: Any)
    {
        self.view.backgroundColor = UIColor.black
    }
    @IBOutlet weak var goBlack: UIButton!
}

