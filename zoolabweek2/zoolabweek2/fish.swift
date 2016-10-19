//
//  fish.swift
//  zoolabweek2
//
//  Created by Chad Trador on 10/14/16.
//  Copyright © 2016 Chad Trador. All rights reserved.
//



import Foundation

class Fish: Animal   {
    
    // private var Interactive = ZooInteractive()
    private var done: Bool = false
    // private var io = Io()
    private var currentInput: String = "q"
    // private var zoo = Zoo()
    // private var people = People()
    private var animal = Animal()
    
    
    func fishMenu(){
        
        while !done {
            
            io.writeMessage("\nWelcome to the fish Menu:\n to add new fish type: add fish\n to list fish type: list fish\nfor help type help\nto Quit type quit\n back type:back")
            currentInput = io.getInput()
            
            if currentInput == "quit" {
                done = true
            } else if currentInput == "add fish" {
                
                
                zoo.addNewFish()
                
            }else if currentInput == "list fish"{
                
                zoo.listFishAtZoo()
                
            } else if currentInput == "help"{
                //  io.writeMessage("for guests type: guest\n For Employee: type employee\nfor help type help\nto Quit type quit\n back type: back")
                
                zoo.fishHelp()
                
            } else if currentInput == "back"{
                
                animal.animalGo()
                
            }else {
                print("The only responces are quit; back; list fish; add fish;help; back \(currentInput)  is not an option")
            }
            
            
            print("Exiting....")
            
            return
        }
             }
}
