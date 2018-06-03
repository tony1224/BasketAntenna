//
//  BasketAntennaTests.swift
//  BasketAntennaTests
//
//  Created by Morita Jun on 2018/05/27.
//  Copyright © 2018年 KamuiProject. All rights reserved.
//

import XCTest
@testable import BasketAntenna

class BasketAntennaTests: XCTestCase {
    
    func test_足し算の計算が合うこと() {
        let sample = Sample()
        XCTAssertEqual(5, sample.add(a: 2, b: 3))
    }
    
}
