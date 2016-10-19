//
//  zoo.swift
//  zoolabweek2
//
//  Created by Chad Trador on 10/13/16.
//  Copyright © 2016 Chad Trador. All rights reserved.
//

import Foundation


//import Foundation
//private var io = Io()
//private var currentInput: String = "q"
//private var zooInteractive = ZooInteractive
//private var people = People()
private var employee = Employee()
private var guest = Guest()
private var birds = Birds()
private var fish = Fish()
private var snake = Snake()

class Zoo{
    var snakeAtZoo = ["Cobra, Copperhead"]
    var fishAtZoo = ["bass", "trout"]
   var employeesAtZoo = ["Chad Trador", "Izaak Prats", "lane Terry"]
     var guestAtZoo = ["Bill Fear", "Joan Kill", "Blane Terry"]
    var birdsAtZoo = ["Big Bird"]
    //var checkedInBooks: [String] = [String]()
    //var booksCheckedout: [String] = [String]()
    
    func help()  {
        
        print("\nto go  animals in Chad's Zoo type: animals\nto go to people in Cad's Zoo type: people\nfor help type help\nto Quit type quit")
        interactive.go()
    
    }
    
    func peopleHelp(){
        print("for guests type: guest\n For Employee: type employee\nfor help type help\nto Quit type quit\n back to main menu type: back")
    
     people.peopleGo()
        
    }
    
    func addNewEmployee()  {
        io.writeMessage("what is the employee's Name")
        currentInput = io.getInput()
        let newEmployee = currentInput
    //print("New employee:\(newEmployee) has been add")
        employeesAtZoo.append(newEmployee)
        print("Added new employee\n\(newEmployee) to zoo")
        //go back to employee menu
        employee.employeeMenu()
    }
    
    func listEmployeesAtZoo()  {
           print(employeesAtZoo)
       employee.employeeMenu()
        }

    func employeeHelp(){
        print(" add new employee type: add employee\n to list Employee type: list employee\nfor help type help\nto Quit type quit\n back type:back")
    employee.employeeMenu()
        
    }
//guest func start
    
    func addNewGuest()  {
        io.writeMessage("what is the Guest Name")
        currentInput = io.getInput()
        let newGuest = currentInput
        //print("New employee:\(newEmployee) has been add")
        guestAtZoo.append(newGuest)
        print("Thanks for comming to Chad's Zoo\n\(newGuest)")
        //go back to employee menu
        guest.guestMenu()
    }
    
    func listGuestAtZoo()  {
        print(guestAtZoo)
        guest.guestMenu()

    }
    
    func guestHelp(){
        print(" add new guest type: add guest\n to list guest type: list guest\nfor help type help\nto Quit type quit\n back type: back")
    guest.guestMenu()
    }
// animals func starts
 
    
    
    func animalHelp(){
        print("for birds type: birds\n fish: type fish\nsnake type: snake\nfor help type help\nto Quit type quit\n back to main menu type: back")
        animals.animalGo()
        
    }
    // birds func starts
    
    
    func addNewBird()  {
        io.writeMessage("what is the birds Name")
        currentInput = io.getInput()
        let newBird = currentInput
        //print("New employee:\(newEmployee) has been add")
        birdsAtZoo.append(newBird)
        print("the new birds name is\n\(newBird)")
        //go back to employee menu
        birds.birdsMenu()
    }
    
    func listBirdsAtZoo()  {
        print(birdsAtZoo)
         birds.birdsMenu()
        
    }
    
    func birdsHelp(){
        print(" add new bird type: add bird\n to list birds type: list birds\nfor help type help\nto Quit type quit\n back type: back")
         birds.birdsMenu()
    
    
}
    //fish starts hear
    
    
    
    func addNewFish()  {
        io.writeMessage("what is the fish Name")
        currentInput = io.getInput()
        let newFish = currentInput
        //print("New employee:\(newEmployee) has been add")
        fishAtZoo.append(newFish)
        print("the new birds name is\n\(newFish)")
        //go back to employee menu
        fish.fishMenu()
    }
    
    func listFishAtZoo()  {
        print(fishAtZoo)
        fish.fishMenu()
        
    }
    
    func fishHelp(){
        print(" add new fish type: add fish\n to list fish type: list fish\nfor help type help\nto Quit type quit\n back type: back")
        fish.fishMenu()
        
        
    }
    
    // snake starts here
    func addNewSnake()  {
        io.writeMessage("what is the snake Name")
        currentInput = io.getInput()
        let newSnake = currentInput
        //print("New employee:\(newEmployee) has been add")
        snakeAtZoo.append(newSnake)
        print("the new snake name is\n\(newSnake)")
        //go back to employee menu
        snake.snakeMenu()
    }
    
    func listSnakeAtZoo()  {
        print(snakeAtZoo)
        snake.snakeMenu()
    }
        
    
    
    func snakeHelp(){
        print(" add new snake type: add snake\n to list snake type: list snake\nfor help type help\nto Quit type quit\n back type: back")
        snake.snakeMenu()
     }



      }

    

