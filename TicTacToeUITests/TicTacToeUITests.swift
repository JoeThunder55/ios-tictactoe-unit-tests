//
//  TicTacToeUITests.swift
//  TicTacToeUITests
//
//  Created by Joe on 4/15/20.
//  Copyright © 2020 Lambda School. All rights reserved.
//

import XCTest

class TicTacToeUITests: XCTestCase {
    func testWinXTopRow() {
        testWinCondition(moves: [
            "topLeft",
            "centerLeft",
            "topMiddle",
            "centerMiddle",
            "topRight"
        ], expectedWinner: "X")
    }
    func testWinXMiddleRow() {
        testWinCondition(moves: [
            "centerLeft",
            "topLeft",
            "centerMiddle",
            "topMiddle",
            "centerRight"
        ], expectedWinner: "X")
    }
}
extension TicTacToeUITests {
    var app: XCUIApplication {
        return XCUIApplication()
    }
    func assertWin(_ player: String) {
        let statusLabelText = app.staticTexts["statusLabel"].label
        XCTAssertEqual(statusLabelText, "Player \(player) won!")
    }
    func testWinCondition(moves: [String], expectedWinner: String) {
        app.launch()
        for move in moves {
            app.buttons[move].tap()
        }
        assertWin(expectedWinner)
    }
}
