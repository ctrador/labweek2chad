//
//  Interactive.swift
//  CommandLineBase
//
//  Created by Jeff Pickett on 8/25/16.
//  Copyright © 2016 Eleven Fifty Consulting. All rights reserved.
//

import Foundation

class Interactive {
    private var done:Bool = false
    private var io = Io()
    private var currentInput: String = "q"
    private var library = Library()
    
    func go() {
        
        while !done {
            
            io.writeMessage("\nWelcome to Chad's library:\nto list books in library:type list books\nto checkout Books type check out\nto checkin Books type check in\nto add new Book to libary type add new\n for help type help\nto Quit type quit")
            currentInput = io.getInput()
          
            //change to switch staement
            
            if currentInput == "quit" {
                done = true
            } else if currentInput == "check in" {
                // Check In
                
                 library.checkINBook()
                
            }else if currentInput == "check out"{
            //check out
                 library.checkoutBook()
            }else if currentInput == "add new" {
            // add new books
               //library.addNew(stuff)
                
               library.addNewBook()
                
        }else if currentInput == "list books"{
           
                library.ListBooksInLibrary()
                
            } else if currentInput == "help"{
           // io.writeMessage("look up books type: look up\n check out book: check out\ncheckin book: check in\n add new book: add new\nlookup book: lookup\n help: help\nquit: quit")
                
                library.help()
                
            }else {
                print("The only responces are quit; check in; check out; add new; look up; help \(currentInput)  is not an option")
            }
        }
        
        print("Exiting....")
        
        return
    }
    
}
