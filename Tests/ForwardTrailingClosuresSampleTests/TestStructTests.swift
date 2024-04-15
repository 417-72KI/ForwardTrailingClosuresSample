import XCTest
@testable import ForwardTrailingClosuresSample

final class TestStructTests: XCTestCase {
    func test1() {
        let testStruct = TestStruct()
        XCTAssertEqual(testStruct.foo(), "foo")
        XCTAssertEqual(testStruct.bar(), "bar")
        XCTAssertEqual(testStruct.baz(), "baz")
    }

    func test2() {
        let testStruct = TestStruct {
            "hoge"
        }
        XCTAssertEqual(testStruct.foo(), "foo")
        XCTAssertEqual(testStruct.bar(), "bar")
        XCTAssertEqual(testStruct.baz(), "hoge")
    }

    func test3() {
        let testStruct = TestStruct {
            "hoge"
        } bar: {
            "fuga"
        }
        XCTAssertEqual(testStruct.foo(), "hoge")
        XCTAssertEqual(testStruct.bar(), "fuga")
        XCTAssertEqual(testStruct.baz(), "baz")
    }

    func test4() {
        let testStruct = TestStruct {
            "hoge"
        } baz: {
            "piyo"
        }
        XCTAssertEqual(testStruct.foo(), "hoge")
        XCTAssertEqual(testStruct.bar(), "bar")
        XCTAssertEqual(testStruct.baz(), "piyo")
    }

    func test5() {
        let testStruct = TestStruct {
            "hoge"
        } bar: {
            "fuga"
        } baz: {
            "piyo"
        }
        XCTAssertEqual(testStruct.foo(), "hoge")
        XCTAssertEqual(testStruct.bar(), "fuga")
        XCTAssertEqual(testStruct.baz(), "piyo")
    }

}
