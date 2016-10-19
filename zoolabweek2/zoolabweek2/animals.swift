//
//  animals.swift
//  zoolabweek2
//
//  Created by Chad Trador on 10/14/16.
//  Copyright © 2016 Chad Trador. All rights reserved.
//

import Foundation

private var employee = Employee()
//private var people = People()
private var guest = Guest()
private var birds = Birds()
private var fish = Fish()
private var snake = Snake()


class Animal: Zoo {
    
    //private var Interactive = ZooInteractive()
    private var done: Bool = false
    //private var io = Io()
    private var currentInput: String = "q"
    // private var zoo = Zoo()
    // private var employee = Employee()
    // private var people = People()
   // private var birds = Birds()
    func animalGo(){
        
        
        while !done {
            
            io.writeMessage("\nWelcome to the animal Menu:\n for birds type: birds\n fish: type fish\nsnake type: snake\nfor help type help\nto Quit type quit\n back to main menu type: back")
            currentInput = io.getInput()
            
            if currentInput == "quit" {
                done = true
            } else if currentInput == "birds" {
                // Check In
                
                birds.birdsMenu()
                
            }else if currentInput == "fish"{
                //check out
                
                
                fish.fishMenu()
                
            }else if currentInput == "snake"{
            
            //go zoo func
            snake.snakeMenu()
                
            }else if currentInput == "help"{
                //io.writeMessage("for guests type: guest\n For Emploees: type emploees\nfor help type help\nto Quit type quit")
                
                zoo.animalHelp()
                
            }else if currentInput == "back"{
                
                interactive.go()
                
            }else {
                print("The only responces are quit; birs; fish; snakes; help; back \(currentInput)  is not an option")
            }
            
            
            print("Exiting....")
            
            return
        }
    }
    
    
}
