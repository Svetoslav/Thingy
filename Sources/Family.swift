//
// Family
// Thingy
//
// Created by Bojan Dimovski on 21.11.16.
// Copyright © 2017 Bojan Dimovski. All rights reserved.
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


import Foundation

/// A type that describes the product family.
///
/// - phone: iPhone product family.
/// - pod: iPod touch product family.
/// - pad: iPad product family.
/// - tv: Apple TV product family.
/// - watch: Apple Watch product family.

public enum Family: String {
	case phone = "iPhone"
	case pod = "iPod"
	case pad = "iPad"
	case tv = "AppleTV"
	case watch = "Watch"
}

// MARK: - Marketing protocol

extension Family: MarketingProtocol {
	public var marketingName: String {
		switch self {
		case .phone:
			return "iPhone"
		case .pod:
			return "iPod"
		case .pad:
			return "iPad"
		case .tv:
			return "Apple TV"
		case .watch:
			return "Watch"
		}
	}
}
