//
//  people.swift
//  zoolabweek2
//
//  Created by Chad Trador on 10/13/16.
//  Copyright © 2016 Chad Trador. All rights reserved.
//

import Foundation

private var employee = Employee()
//private var people = People()
private var guest = Guest()
class People: Zoo {

    //private var Interactive = ZooInteractive()
    private var done: Bool = false
    //private var io = Io()
    private var currentInput: String = "q"
   // private var zoo = Zoo()
   // private var employee = Employee()
   // private var people = People()
   
    func peopleGo(){
        
    
    while !done {
    
    io.writeMessage("\nWelcome to the people Menu:\n for guests type: guest\n Employee: type employee\nfor help type help\nto Quit type quit\n back to main menu type: back")
    currentInput = io.getInput()
    
    if currentInput == "quit" {
    done = true
    } else if currentInput == "employee" {
    // Check In
    
    employee.employeeMenu()
    
    }else if currentInput == "guest"{
    //check out
    
    
    guest.guestMenu()
        
    } else if currentInput == "help"{
    //io.writeMessage("for guests type: guest\n For Emploees: type emploees\nfor help type help\nto Quit type quit")
    
    zoo.peopleHelp()
    
    }else if currentInput == "back"{
     
        interactive.go()
        
    }else {
    print("The only responces are quit; people; animals;help \(currentInput)  is not an option")
    }
    
    
    print("Exiting....")
    
    return
        }
            }


    }

        
        
        
        








