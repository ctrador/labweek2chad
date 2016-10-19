//
//  birds.swift
//  zoolabweek2
//
//  Created by Chad Trador on 10/14/16.
//  Copyright © 2016 Chad Trador. All rights reserved.
//

//import Foundation
//import Foundation
import Foundation

class Birds: Animal{
    
    // private var Interactive = ZooInteractive()
    private var done: Bool = false
    // private var io = Io()
    private var currentInput: String = "q"
    // private var zoo = Zoo()
    // private var people = People()
    private var animal = Animal()
    
    
    func birdsMenu(){
        
        while !done {
            
            io.writeMessage("\nWelcome to the birds Menu:\n to add new brid type: add bird\n to list bird type: list bird\nfor help type help\nto Quit type quit\n back type:back")
            currentInput = io.getInput()
            
            if currentInput == "quit" {
                done = true
            } else if currentInput == "add bird" {
                
                
                zoo.addNewBird()
                
            }else if currentInput == "list birds"{
                
                zoo.listBirdsAtZoo()
                
            } else if currentInput == "help"{
                //  io.writeMessage("for guests type: guest\n For Employee: type employee\nfor help type help\nto Quit type quit\n back type: back")
                
                zoo.birdsHelp()
                
            } else if currentInput == "back"{
                
               animal.animalGo()
                
            }else {
                print("The only responces are quit; back; list bird; add bird;help; back \(currentInput)  is not an option")
            }
            
            
            print("Exiting....")
            
            return
        }
    }
    
}
