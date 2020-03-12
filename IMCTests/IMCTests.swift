//
//  IMCTests.swift
//  IMCTests
//
//  Created by Bruno Cortez on 3/11/20.
//  Copyright © 2020 Eric Brito. All rights reserved.
//

import XCTest
@testable import IMC

class IMCTests: XCTestCase {
    
    var sut: IMCCalculator!

    override func setUp() {
        // Put setup code here. This method is called before the invocation of each test method in the class.
        super.setUp()
        sut = IMCCalculator()
    }

    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
        sut = nil
        super.tearDown()
    }
    
    func testObesity() {
        
        // gherking sintaxe
        
        // given
        let weight = 90.0
        let height = 1.45
        
        // when
        sut.refresh(weight: weight, height: height)
        
        // then
        // 42: Obesidade
        let expectedResult = "42: Obesidade"
        XCTAssertEqual(expectedResult, sut.result, "Erro no cálculo de obesidade")
        
    }
    
    func testIdeal() {
        
        // given
        let weight = 63.0
        let height = 1.8
        
        // when
        sut.refresh(weight: weight, height: height)
        
        // then
        // 42: Ideal
        let expectedResult = "19: Peso ideal"
        XCTAssertEqual(expectedResult, sut.result, "Erro no cálculo peso ideal")
    }
    
    func testThinnes() {
        
        // given
        let weight = 50.0
        let height = 1.8
        
        // when
        sut.refresh(weight: weight, height: height)
        
        // then
        // 42: Ideal
        let expectedResult = "15: Magreza"
        XCTAssertEqual(expectedResult, sut.result, "Erro no cálculo magreza")
    }



}
