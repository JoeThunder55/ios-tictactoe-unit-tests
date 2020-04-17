//
//  GameAI.swift
//  TicTacToe
//
//  Created by Andrew R Madsen on 9/11/18.
//  Copyright © 2018 Lambda School. All rights reserved.
//

import Foundation

func game(board: GameBoard, isWonBy player: GameBoard.Mark) -> Bool {
    
    let topPositions = [(0,0), (1,0), (2,0)]
    
    let topMarks = topPositions.map { topPosition -> GameBoard.Mark? in
        return board[topPosition]
    }
    
    var playerDidWin = false
    for possibleMark in topMarks {
        if let mark = possibleMark {
            // There is a mark
            if mark != player {
                playerDidWin = false
            }
            
        } else {
            
            playerDidWin = false
            break
        }
    }
    
    return playerDidWin
}
