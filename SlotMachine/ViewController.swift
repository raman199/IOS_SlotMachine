//
//  ViewController.swift
//  SlotMachine
//
//  Created by mac on 2020-01-20.
//  Copyright © 2020 Centennial College. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    var Vjackpot = 5000
    var playerMoney = 1000
    var winnings = 0
    var turn = 0
    var playerBet = 0
    var winNumber = 0
    var lossNumber = 0
    
    var spinResult = "";
    var fruits = ""
    var grapes = 0
    var bananas = 0
    var cherries = 0
    var bars = 0
    var bells = 0
    var seven = 0
    var blanks = 0
    
    
    @IBOutlet weak var jackpot: UILabel!
    @IBOutlet weak var bet: UITextField!
    
    @IBOutlet weak var result: UILabel!
    @IBOutlet weak var money: UILabel!
    
    @IBAction func spin(_ sender: UIButton) {
        //playerBet = Int(bet.text!) ?? <#default value#>
        if(playerMoney == 0)
        {
         
            
        }
        
        if(playerBet > playerMoney)
        {
            let alert = UIAlertController(title: "Alert", message: "You don't have enough Money to place that bet.", preferredStyle: UIAlertController.Style.alert)
            alert.addAction(UIAlertAction(title: "ok", style: UIAlertAction.Style.default, handler: nil))
            self.present(alert, animated: true, completion: nil)


        }
        
        
    }
    @IBAction func reset(_ sender: UIButton) {
        let alert = UIAlertController(title: "Alert", message: "Message", preferredStyle: UIAlertController.Style.alert)
                  alert.addAction(UIAlertAction(title: "Click", style: UIAlertAction.Style.default, handler: nil))
                  self.present(alert, animated: true, completion: nil)
    }
    @IBAction func quit(_ sender: UIButton) {
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        self.view.backgroundColor = UIColor.orange
    }


}

