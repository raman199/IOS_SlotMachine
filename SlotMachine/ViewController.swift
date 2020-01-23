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
        let playerBet1 = Int(bet.text!)!
        if(playerMoney == 0 )
        {
            let alert = UIAlertController(title: "Alert", message: "You ran out of Money!", preferredStyle: UIAlertController.Style.alert)
                     alert.addAction(UIAlertAction(title: "ok", style: UIAlertAction.Style.default, handler: nil))
                     self.present(alert, animated: true, completion: nil)
           reset()
        }
        
        else if(playerBet1 > playerMoney)
        {
            let alert = UIAlertController(title: "Alert", message: "You don't have enough Money to place that bet.", preferredStyle: UIAlertController.Style.alert)
            alert.addAction(UIAlertAction(title: "ok", style: UIAlertAction.Style.default, handler: nil))
            self.present(alert, animated: true, completion: nil)
        }
        else if (playerBet <= playerMoney) {
        reels()
        determineWinnings()
          turn += 1
            showPlayerStats()
        
        }
        else{
            let alert = UIAlertController(title: "Alert", message: "Please enter a valid bet amount", preferredStyle: UIAlertController.Style.alert)
            alert.addAction(UIAlertAction(title: "ok", style: UIAlertAction.Style.default, handler: nil))
            self.present(alert, animated: true, completion: nil)
        }
        
    }
    @IBAction func reset(_ sender: UIButton) {
       reset()
       
    }
    @IBAction func quit(_ sender: UIButton) {
        reset()

    }
    
    func reset()
    {
        money.text = "1000"
        bet.text = "20"
        result.text = ""
        jackpot.text = "5000"
        
         Vjackpot = 5000
         playerMoney = 1000
         winnings = 0
         turn = 0
            playerBet = 0
            winNumber = 0
            lossNumber = 0
           
            spinResult = "";
            fruits = ""
            grapes = 0
            bananas = 0
            cherries = 0
            bars = 0
            bells = 0
            seven = 0
            blanks = 0
    }
    func reels()
    {
        
    }
    func determineWinnings()
    {
        
    }
    func showPlayerStats()
    {
        
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        self.view.backgroundColor = UIColor.orange
    }


}

