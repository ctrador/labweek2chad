//
//  GameOverViewController.swift
//  tictactoe
//
//  Created by Chad Trador on 10/17/16.
//  Copyright © 2016 Chad Trador. All rights reserved.
//
// all ios standard func
import UIKit

// class for view of gamegame over
class GameOverViewController: UIViewController {
    
    //for labels winner
    @IBOutlet weak var winerLabel: UILabel!
  
    // label if x wins
    @IBOutlet weak var xWinLabel: UILabel!
   
    // label if o wins
    @IBOutlet weak var oWinLabel: UILabel!
   
    // label for draw
    @IBOutlet weak var drawsLabel: UILabel!
    
    // var for winner  ? why player.none
    var winner = player.none
    
    
    // override func viewDid load ? super.viewDidLoad
    override func viewDidLoad() {
        super.viewDidLoad()
       
        // print winner who won(winner) x, o, draw
        print("winner:\(winner)")
        
        
       //winner label text means put that in label winner not draw prints wins ? ! unwrap
        winerLabel.text = "\(winner)\(winner != .draw ? " wins" : "!")"
        
        // constant defaults userDefaults.standard means use standard user defaults
        let defaults = UserDefaults.standard
        
        // var x wins userDefaults means we will store interger means as it value and return integer value  forKey x, o, draw wins
        var xWins = defaults.integer(forKey: "x wins")
        var oWins = defaults.integer(forKey: "o wins")
        var draws = defaults.integer(forKey: "draws")
        
        // switch statement winner o, x , draw wins + 1  to print o wins case .none break just in case
        switch winner {
        case .o:
            oWins += 1
            defaults.set(oWins, forKey: "oWins")
        case .x:
            xWins += 1
            defaults.set(xWins, forKey: "xWins")
        case .draw:
            draws += 1
            defaults.set(draws, forKey: "draws")
            
        case .none:
            break
            
            // Do any additional setup after loading the view.
        }// x, o draw label text puts var in label that is in "" that wins
        xWinLabel.text = "\(xWins)"
        oWinLabel.text = "\(oWins)"
        drawsLabel.text = "\(draws)"
    }
    
    // ios xcode pre set override func that checks if memory Warning is recived
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
        
        
    }
    
}
/*
 // MARK: - Navigation
 
 // In a storyboard-based application, you will often want to do a little preparation before navigation
 override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
 // Get the new view controller using segue.destinationViewController.
 // Pass the selected object to the new view controller.
 }
 */


