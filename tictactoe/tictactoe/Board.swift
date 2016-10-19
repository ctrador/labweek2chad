//
//  Board.swift
//  tictactoe
//
//  Created by Chad Trador on 10/17/16.
//  Copyright © 2016 Chad Trador. All rights reserved.
//

import UIKit
// class for board NSObject is ios xcode func that means object that get runtime interface
class Board: NSObject {
   
    //sets up array for the board refers to enum player  and none string one for each button
    //and each row 3 X 3
 fileprivate var board = [[player.none, player.none, player.none],
                          [player.none, player.none, player.none],
                          [player.none, player.none, player.none]]
    // var for turns = 0
    var turns = 0
    
    //var noMoreTurns = 9
    var noMoreTurns = 9
    
    //? subscript index is an Int to player is optional
    subscript(index: Int)-> player? {
       
        //? get
        get {
            // if statement index less than 9 return board [array row] [array colum] return nil set if index is less than 9 let indices = get indices function
            //board row column = new value opitional turns add 1  ask ??????
            //(constant(let) indices ("indexes") = calls function getInices(index))
            if index < 9{
                let indices = getIndices(index)
                return board[indices.row][indices.col]
        }
        return nil
        }
        set{
            if index < 9 {
                let indices = getIndices(index)
                board[indices.row][indices.col] = newValue!
           
            turns += 1
            }
            
        }
    }// get indices  index is Int to row  Int column Int return index divided by 3 index modglus 3
    fileprivate func getIndices(_ index: Int)-> (row: Int, col: Int) {
        return (index / 3, index % 3)
    }
    
    // func rest board board = [array player none 3 rows x 3 columns] 0 turns
    func restBorad() {
        board = [[player.none, player.none, player.none],
                 [player.none, player.none, player.none],
                 [player.none, player.none, player.none]]
        
        turns = 0
        
    }
    // func check win index Int to player index grater or equal to nine return none get indices of Int row and column
    func checkWin(_ index: Int) -> player {
        if index >= 9 {
            return.none
        }
        // indices constant
     let indices = getIndices(index)
        
        // check row board row [0] == board row [1] and row [0] equals row [2] ???? return self [array index] unwrap if 0 and one are same and 2 and three are the same then all three are the same so it is a win
        if board[indices.row][0] == board[indices.row][1] &&
            board[indices.row][0] == board[indices.row][2]{
            return self[index]!
        }
            // check column x wins o wins same as row just with column
        if board[0][indices.col] == board[1][indices.col] &&
            board[0][indices.col] == board [2][indices.col]{
            return self[index]!
        }
            //check diagonal if neccessary x wins or  o wins rows are[0 + 0] [1 + 0] [2 +2]
            //                                                       [0 + 1] [1 + 1] [2 +1]
            //                                                       [0 + 2] [1 + 0] [2 +2]
        //        add to numbs are even are 0+0, 2+2, 1+1, 0+2, 2+2
        
        if (indices.row + indices.col) % 2 == 0 {
            
            
            // if [1][1] not none and board[0][0] equal board[1][1] and board[0][0] equal board [2][2] or board [0][2] equal board [1][1] and board [1][1] and board [0][2] return self[index]
            if board[1][1] != .none &&
            ((board[0][0] == board[1][1] && board[0][0] == board[2][2]) ||
            (board[0][2] == board[1][1] && board[0][2] == board [2][0]))  {
                return self[index]!
           
            }
        }
            // check if board is full cat wins if turns equals no more turns then return draw
        if turns == noMoreTurns{
            return .draw
        }
            return.none

}
}
