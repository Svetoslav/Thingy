//
//  DeviceTests.swift
//  Device
//
//  Created by Bojan Dimovski on 21.11.16.
//  Copyright © 2016 Bojan Dimovski. All rights reserved.
//


import XCTest
@testable import Device

class DeviceTests: XCTestCase {
    
    override func setUp() {
        super.setUp()
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }
    
    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
        super.tearDown()
    }

	func testDeviceIdentifierShouldNotBeEmpty() {
		let identifier = Device.identifier
		XCTAssertFalse(identifier.isEmpty, "The model identifier should not be empty.")
	}

}
