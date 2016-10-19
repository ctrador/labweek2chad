//
//  GameBoardViewController.swift
//  tictactoe
//
//  Created by Chad Trador on 10/17/16.
//  Copyright © 2016 Chad Trador. All rights reserved.
//

import UIKit

let xColorKey = "xColor"
let oColorKey = "oColor"





// class game board view controller uiviewController
class GameBoardViewController: UIViewController {
    
    //set up 9 buttons on board and turnLabel
    @IBOutlet weak var button0: UIButton!
    @IBOutlet weak var button1: UIButton!
    @IBOutlet weak var button2: UIButton!
    @IBOutlet weak var button3: UIButton!
    @IBOutlet weak var button4: UIButton!
    @IBOutlet weak var button5: UIButton!
    @IBOutlet weak var button6: UIButton!
    @IBOutlet weak var button7: UIButton!
    @IBOutlet weak var button8: UIButton!
    @IBOutlet weak var turnLabel: UILabel!
    
    // var player turn player x
    var playerTurn = player.x
    
    // board = Board conects Board class
    var board = Board()
    
    var xColor: UIColor!
    var oColor: UIColor!
    
    // over ride view did load func set up by Xcode
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        
        // performSegue(withIdentifier: "GameOver", sender: self)
        setUpBoard()
        
        // Do any additional setup after loading the view.
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        let userDefaults = UserDefaults.standard
        var colorData = userDefaults.data(forKey: xColorKey)
        if let colorData = colorData {
            xColor = NSKeyedUnarchiver.unarchiveObject(with: colorData) as? UIColor ?? #colorLiteral(red: 0, green: 0, blue: 0, alpha: 1)
            
        } else {
            oColor = #colorLiteral(red: 0, green: 0, blue: 0, alpha: 1)
            
        }
        colorData = userDefaults.data(forKey: oColorKey)
        if let colorData = colorData {
            oColor = NSKeyedUnarchiver.unarchiveObject(with: colorData) as? UIColor ?? #colorLiteral(red: 0, green: 0, blue: 0, alpha: 1)
            
        }else {
            oColor = #colorLiteral(red: 0, green: 0, blue: 0, alpha: 1)
            
        }
        
        setButtonColor(button0, button1, button2, button3, button4, button5, button6, button7, button8)
        
    }
    
    
    
    // over ride func set up by x code for memory
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    
    // MARK: - Navigation
    
    // In a storyboard-based application, you will often want to do a little preparation before navigation
    // geting ready for segue by any
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
        // segue id equals game over constant dest vc = segue destinaltion as not game over view controller class if button sender as optional user interface button winner = board check win button tag
        if segue.identifier == "GameOver" {
            let destVC = segue.destination as! GameOverViewController
            if let button = sender as?  UIButton{
                destVC.winner = board.checkWin(button.tag)
            }
            
            // set up board
            setUpBoard()
        }
        
    }
    fileprivate func setButtonColor(_ buttons: UIButton...){
        for button in buttons{
            if button.title(for: .normal) == player.x.rawValue {
                button.setTitleColor(xColor, for: .normal)
            }else if button.title(for: .normal) == player.o.rawValue{
                button.setTitleColor(oColor, for: .normal)
            }
        }
    }
    
    // func set up board player x turn turn label starts at x and says x's turn all buttons set to blank so board is reset
    fileprivate func setUpBoard(){
        playerTurn = .x
        turnLabel.text = "X's Turn"
        button0.setTitle("", for: .normal)
        button1.setTitle("", for: .normal)
        button2.setTitle("", for: .normal)
        button3.setTitle("", for: .normal)
        button4.setTitle("", for: .normal)
        button5.setTitle("", for: .normal)
        button6.setTitle("", for: .normal)
        button8.setTitle("", for: .normal)
        button7.setTitle("", for: .normal)
        
        board.restBorad()
        
    }
    //Mark: - IBActions button touched release send object use x o tag
    
    
    @IBAction func buttonTapped(_ sender: UIButton) {
        
        print(sender.tag)
        
        // button is constant board will be players tag x or o or it can equal none blank
        //then next person other sender tag  and players turn changes to next player
        if let buttonPlayer = board[sender.tag], buttonPlayer == .none {
            board[sender.tag] = playerTurn
            
            //when players takes turn set turn to next players turn and do again
            sender.setTitle(playerTurn.takeTurn(), for: .normal)
            turnLabel.text = "\(playerTurn)'s turn"
            
            
            // set constant winner to function check win in board class
            let winner = board.checkWin(sender.tag)
            // winner not equal none print winner and go to gameover class
            if winner != .none {
                print(winner)
                performSegue(withIdentifier: "GameOver", sender: sender)
            }
            
            setButtonColor(sender)
        }
        
        
    }
}


// set enums for x, o, none, draw with mutaing func take turn that is string constant string to take turn func switch self x take tur o self o self x with break default return string
enum player: String {
    case x
    case o
    case none
    case draw
    
    mutating func   takeTurn()-> String {
        let string = "\(self)"
        switch self {
        case .x:
            self = .o
        case .o:
            self = .x
        default:
            break
        }
        return string
        
    }
}

