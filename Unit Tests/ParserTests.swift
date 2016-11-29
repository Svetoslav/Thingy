//
// ParserTests
// Device
//
// Created by Bojan Dimovski on 28.11.16.
// Copyright (c) 2016 Bojan Dimovski.
//
// Permission is hereby granted, free of charge, to any person obtaining a copy
// of this software and associated documentation files (the "Software"), to deal
// in the Software without restriction, including without limitation the rights
// to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
// copies of the Software, and to permit persons to whom the Software is
// furnished to do so, subject to the following conditions:
//
// The above copyright notice and this permission notice shall be included in
// all copies or substantial portions of the Software.
//
// THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
// IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
// FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
// AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
// LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
// OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN
// THE SOFTWARE.


import XCTest
@testable import Device

class ParserTests: XCTestCase {

	func testParsingValidDevice() {
		let identifier = "iPad6,3"

		let (family, model, productLine) = Parser.shared.parse(identifier: identifier)

		XCTAssertNotNil(family)
		XCTAssertNotNil(model)
		XCTAssertNotNil(productLine)


		XCTAssert(family == .pad)
		XCTAssert(model == .iPadPro9Inch)

		if let productLine = productLine as? ProductLine.iPad {
			XCTAssert(productLine == .pro)
		}
	}

	func testParsingInvalidDevice() {
		let identifier = "6,3"

		let (family, model, productLine) = Parser.shared.parse(identifier: identifier)

		XCTAssertNil(family)
		XCTAssertNil(model)
		XCTAssertNil(productLine)
	}

	func testResolveUnknownDevice() {
		let identifier = "iPad1,337"

		let (family, model, productLine) = Parser.shared.parse(identifier: identifier)

		XCTAssertNotNil(family)
		XCTAssertNil(model)
		XCTAssertNil(productLine)
	}

}