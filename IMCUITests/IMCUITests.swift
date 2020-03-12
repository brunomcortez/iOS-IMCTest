//
//  IMCUITests.swift
//  IMCUITests
//
//  Created by Bruno Cortez on 3/11/20.
//  Copyright © 2020 Eric Brito. All rights reserved.
//

import XCTest

class IMCUITests: XCTestCase {
    
    var app: XCUIApplication!

    override func setUp() {
        super.setUp()
        app = XCUIApplication()
        app.launch()
        // Put setup code here. This method is called before the invocation of each test method in the class.

        // In UI tests it is usually best to stop immediately when a failure occurs.
        continueAfterFailure = false

        // In UI tests it’s important to set the initial state - such as interface orientation - required for your tests before they run. The setUp method is a good place to do this.
    }

    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
        app = nil
        super.tearDown()
    }
    
    func testIdeal() {
        
        let tfWeight = app.textFields["Ex.: 75"]
        tfWeight.tap()
        tfWeight.typeText("75")
        
        let tfHeight = app.textFields["Ex.: 1,75"]
        tfHeight.tap()
        tfHeight.typeText("1.75")
        
        app.buttons["Calcular"].tap()
        
        XCTAssertNotNil(app.staticTexts["24: Peso ideal"], "Error to update peso ideal label")
    }

//    func testExample() {
//        // UI tests must launch the application that they test.
//        let app = XCUIApplication()
//        app.launch()
//
//        // Use recording to get started writing UI tests.
//        // Use XCTAssert and related functions to verify your tests produce the correct results.
//    }

//    func testLaunchPerformance() {
//        if #available(macOS 10.15, iOS 13.0, tvOS 13.0, *) {
//            // This measures how long it takes to launch your application.
//            measure(metrics: [XCTOSSignpostMetric.applicationLaunch]) {
//                XCUIApplication().launch()
//            }
//        }
//    }
}
