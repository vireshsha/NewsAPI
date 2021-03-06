//
//  MaterializedSequenceResult.swift
//  NewsArticleTests

import RxBlocking
import XCTest

extension MaterializedSequenceResult {
    /// A convenience method for testing that a stream has ended with a failure
    /// - parameter error: The expected error that will be thrown by the stream
    /// Replaces the longer switch statement checking
    func assertSequenceDidFail<T: Error & Equatable>(withError expectedError: T) {
        switch self {
        case .completed:
            XCTFail("Expected result to complete with error, but result was successful.")
        case let .failed(_, error):
            XCTAssertEqual(error as? T, expectedError)
        }
    }

    /// A convenience method for testing that a stream has ended with a failure
    /// Replaces the longer switch statement checking
    func assertSequenceDidFail() {
        switch self {
        case .completed:
            XCTFail("Expected result to complete with error, but result was successful.")
        case let .failed(_, error):
            XCTAssertNotNil(error)
        }
    }

    /// A convenience method for testing that a stream has completed
    /// Replaces the longer switch statement checking
    func assertSequenceCompletes() {
        switch self {
        case .completed:
        break // pass the test
        case let .failed(_, error):
            XCTFail("Expected result to complete without error, but received \(error).")
            XCTFail("error occured \(error)")
        }
    }
}
