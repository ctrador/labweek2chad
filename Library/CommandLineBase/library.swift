//
//  library.swift
//  Library
//
//  Created by Chad Trador on 10/12/16.
//  Copyright © 2016 Eleven Fifty Consulting. All rights reserved.
//

import Foundation
private var io = Io()
private var currentInput: String = "q"

//private var interactive = Interactive()

class Library{

    
    var booksInLibrary = ["Code the way the truth and the light", "Code", "We hart Swift"]
    var checkedInBooks: [String] = [String]()
    var booksCheckedout: [String] = [String]()
        
    func addNewBook()  {
        io.writeMessage("what is the books name")
        currentInput = io.getInput()
        let newBook = currentInput
    print("New Book is:\(newBook) ")
    
        booksInLibrary.append(newBook)
        print("Added\n\(newBook) to Library")
        interactive.go()
    }

    func checkoutBook()  {
        io.writeMessage("what is Name of book")
        currentInput = io.getInput()
        let checkOutBook = currentInput
        print("Book Checked Out is:\n \(checkOutBook)\n it is due back in 5 days")
        booksCheckedout.append(checkOutBook)
        print("\n(checkedOutBook) is due back in 5 days")
        interactive.go()
    }
    
    func checkINBook()  {
        io.writeMessage("what is Name of book")
        currentInput = io.getInput()
        let checkInBook = currentInput
        print("Thank You for checking in:\(checkInBook) ")
       // checkInBooks.append(checkInBook)
        print("\(checkInBook) is in ready to be checked out")
        booksInLibrary.append(checkInBook)
       // booksCheckedout.remove(checkInBook)
           interactive.go()
    }

    func ListBooksInLibrary()  {
        //io.writeMessage("what is Name of book")
        //currentInput = io.getInput()
        //let lookUpBook = currentInput
       // print("We have:\(lookUpBook) would you like to check it out")
        
       // books[0...2].contains(lookUpBook)
        for _ in booksInLibrary{
            print(booksInLibrary)
          // booksInLibrary.contains(lookUpBook)
        }
            //if (){
           //     booksInLibrary.contains(lookUpBook) == true
             //   print ("we have\n(lookUpBook)")
           // }else {
                
           // print("sorry we do not have:\n(lookupBook")
            
                
           // }
        
        //print("\n \(books)")
           interactive.go()
    }

    func help() {
        io.writeMessage("list books type: list books \n check out book: check out\ncheckin book: check in\n add new book: add new\nlookup book: lookup\n help: help\nquit: quit")
        
        interactive.go()
    }
    
    
}
