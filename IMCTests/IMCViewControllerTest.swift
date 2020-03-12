//
//  IMCViewControllerTest.swift
//  IMCTests
//
//  Created by Bruno Cortez on 3/11/20.
//  Copyright © 2020 Eric Brito. All rights reserved.
//

import XCTest
@testable import IMC

class IMCViewControllerTest: XCTestCase {
    
    var sut: ViewController!

    override func setUp() {
        // Put setup code here. This method is called before the invocation of each test method in the class.
        super.setUp()
        let sb = UIStoryboard(name: "Main", bundle: nil)
        sut = sb.instantiateViewController(withIdentifier: "ViewController") as! ViewController
    }

    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
        sut = nil
        super.tearDown()
    }
    
    func testShowResults() {
        
        // given
        sut.loadView()
        sut.tfHeight.text = "1.70"
        sut.tfWeight.text = "70"
        
        // when
        sut.calculate(nil)
        
        // then
        XCTAssertEqual(sut.lbResult.text, "24: Peso ideal", "Erro no resultado apresentado para o IMC")
        
    }

}
