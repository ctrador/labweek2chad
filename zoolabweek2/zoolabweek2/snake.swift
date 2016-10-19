//
//  snake.swift
//  zoolabweek2
//
//  Created by Chad Trador on 10/14/16.
//  Copyright © 2016 Chad Trador. All rights reserved.
//

import Foundation
class Snake: Animal   {
    
    // private var Interactive = ZooInteractive()
    private var done: Bool = false
    // private var io = Io()
    private var currentInput: String = "q"
    // private var zoo = Zoo()
    // private var people = People()
    private var animal = Animal()
    
    
    func snakeMenu(){
        
        while !done {
            
            io.writeMessage("\nWelcome to the snake Menu:\n to add new snake type: add snake\n to list snake type: list snake\nfor help type help\nto Quit type quit\n back type:back")
            currentInput = io.getInput()
            
            if currentInput == "quit" {
                done = true
            } else if currentInput == "add snake" {
                
                
                zoo.addNewSnake()
                
            }else if currentInput == "list snake"{
                
                zoo.listSnakeAtZoo()
                
            } else if currentInput == "help"{
                //  io.writeMessage("for guests type: guest\n For Employee: type employee\nfor help type help\nto Quit type quit\n back type: back")
                
                zoo.snakeHelp()
                
            } else if currentInput == "back"{
                
                animal.animalGo()
                
            }else {
                print("The only responces are quit; back; list snake; add snake;help; back \(currentInput)  is not an option")
            }
            
            
            print("Exiting....")
            
            return
        }
    }
}
