//
//  IMCSnapshotTests.swift
//  IMCSnapshotTests
//
//  Created by Bruno Cortez on 3/11/20.
//  Copyright © 2020 Eric Brito. All rights reserved.
//

import FBSnapshotTestCase
@testable import IMC

class IMCSnapshotTests: FBSnapshotTestCase {
    
    var sut: ViewController!

    override func setUp() {
        // Put setup code here. This method is called before the invocation of each test method in the class.
        super.setUp()
//        recordMode = true
        usesDrawViewHierarchyInRect = true
        sut = UIStoryboard(name: "Main", bundle: nil).instantiateInitialViewController()
        sut.loadView()
    }

    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
        sut = nil
        super.tearDown()
    }

    func testView() {
        FBSnapshotVerifyView(sut.view)
    }

}
