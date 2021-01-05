//
//  HomeViewModelTests.swift
//  UnitTestIntroductionTests
//
//  Created by BigStep on 05/01/21.
//

import XCTest
@testable import UnitTestIntroduction

class HomeViewModelTests: XCTestCase{

    var model:HomeViewModel!
    
    override func setUpWithError() throws {
        self.model = HomeViewModel(mackbook: Mackbook(name: "Macbook-Air", type: .Air))
    }
    override func tearDownWithError() throws {
        self.model = nil
    }
    
    func testGetMackbookType() throws {
        
        let mackbookType = try XCTUnwrap(model.getMackbookType())
        XCTAssertTrue(mackbookType == .Air)
        
        /*let mackbookType = model.getMackbookType()
        if let type = mackbookType{
            XCTAssertTrue(type == .Air)
        }else{
            XCTAssertNil(mackbookType)
        }*/
    }
    func testGMacbookName(){
        
    }
    func testGetMacbookSpeed(){
        
    }
    

    func testExample() throws {
        // This is an example of a functional test case.
        // Use XCTAssert and related functions to verify your tests produce the correct results.
    }

    func testPerformanceExample() throws {
        // This is an example of a performance test case.
        self.measure {
            // Put the code you want to measure the time of here.
        }
    }

}
