//
//  RegistrationVMTests.swift
//  UnitTestRegistrationTests
//
//  Created by Kumar on 03/10/20.
//  Copyright © 2020 Kumar. All rights reserved.
//

import XCTest
@testable import UnitTestRegistration

class RegistrationVMTests: XCTestCase
{
    private var sut:RegistrationVM!

    override func setUpWithError() throws {
        sut = RegistrationVM()
    }
    override func tearDownWithError() throws {
        sut = nil
    }

    func testFirstNameValidation_shouldNotEmpty(){
        //Act
        let isValid = sut.isValidFirstName(name:"")
        //Assert
        XCTAssertFalse(isValid, "First name should not empty")
    }
    func testFirstNameValidation_minCharsShouldBeThere(){
        //Act
        let isValid = sut.isValidFirstName(name:"a")
        //Assert
        XCTAssertFalse(isValid, "First name should be max or equal to \(AppConstant.Registration.firstNameMinChars)")
    }
    func testFirstNameValidation_shouldNotStartWithNumberOrSpecialChar(){
        //Act
        let isValid = sut.isValidFirstName(name:"1Abhinay")
        //Assert
        XCTAssertFalse(isValid, "First name should not start with number or special char")
    }

}
