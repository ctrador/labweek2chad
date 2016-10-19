//
//  guest.swift
//  zoolabweek2
//
//  Created by Chad Trador on 10/14/16.
//  Copyright © 2016 Chad Trador. All rights reserved.
//

//import Foundation
import Foundation

class Guest: People{
    
    // private var Interactive = ZooInteractive()
    private var done: Bool = false
    // private var io = Io()
    private var currentInput: String = "q"
    // private var zoo = Zoo()
    // private var people = People()
    
    
    
    func guestMenu(){
        
        while !done {
            
            io.writeMessage("\nWelcome to the guest Menu:\n to add new guest type: add guest\n to list guest type: list guest\nfor help type help\nto Quit type quit\n back type:back")
            currentInput = io.getInput()
            
            if currentInput == "quit" {
                done = true
            } else if currentInput == "add guest" {
                
                
                zoo.addNewGuest()
                
            }else if currentInput == "list guest"{
                
                zoo.listGuestAtZoo()
                
            } else if currentInput == "help"{
                //  io.writeMessage("for guests type: guest\n For Employee: type employee\nfor help type help\nto Quit type quit\n back type: back")
                
                zoo.guestHelp()
                
            } else if currentInput == "back"{
                
                people.peopleGo()
                
            }else {
                print("The only responces are quit; back; list guest; add guest;help \(currentInput)  is not an option")
            }
            
            
            print("Exiting....")
            
            return
        }
    }
    
}
