//
//  TicTacToeTests.swift
//  TicTacToeTests
//
//  Created by Joe on 4/16/20.
//  Copyright © 2020 Lambda School. All rights reserved.
//

import XCTest
@testable import TicTacToe
//Import the app

class TicTacToeTests: XCTestCase {

    func testPlacingXOnEmptySquare() {
        // Place X on an empty square (0,0)
        // If the x was placed, i want to fetch mark on (0,0)
        // If I Could Fetch the mark, I want to make sure that the mark is an X
        
        var board = GameBoard()
        XCTAssertNoThrow(try board.place(mark: .x, on: (0,0)))
        
        // if the x was placed, i want to fetch the mark on (0,0)
        let markOnEmptySquare = board[(0,0)]!
        // try! board.place(mark: .x, on: (0,0))
        
        // If i could feth the mark,  I want to make sure that mark is an x
        XCTAssert(markOnEmptySquare == .x, "The makr you just placed is different than the mark requeted")
    }

}
