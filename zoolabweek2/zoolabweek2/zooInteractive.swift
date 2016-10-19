//
//  zooInteractive.swift
//  zoolabweek2
//
//  Created by Chad Trador on 10/14/16.
//  Copyright © 2016 Chad Trador. All rights reserved.

import Foundation


var done: Bool = false
var io = Io()
var currentInput: String = "q"
var zoo = Zoo()
var people = People()
var animals = Animal()

class  ZooInteractive {
    //private var books = Books()
    
   // private var done: Bool = false
   // private var io = Io()
   // private var currentInput: String = "q"
  //  private var zoo = Zoo()
    //private var people = People()
    
    
    func go() {
        
        while !done {
            
            io.writeMessage("\nWelcome to Chad's Zoo\nto go  animals in Chad's Zoo type: animals\nto go to people in Cad's Zoo type: people\nfor help type help\nto Quit type quit")
            currentInput = io.getInput()
            
            if currentInput == "quit" {
                done = true
            } //else if currentInput == "animals" {
                
                
                //library.checkINBook()
                
                // }
            else if currentInput == "people"{
                //check out
                
                people.peopleGo()
                
            } else if currentInput == "animals"{
                
                animals.animalGo()
                
            }else if currentInput == "help"{
                //io.writeMessage("people type: people\n animals type: animals\nhelp: help\nquit: quit")
                
                zoo.help()
                
            }  else {
                print("The only responces are quit; people; animals;help \(currentInput)  is not an option")
            }
        }
        
        print("Exiting....")
        
        return
    }
    
}
