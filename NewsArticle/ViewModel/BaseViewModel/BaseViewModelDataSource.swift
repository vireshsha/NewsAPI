//
//  BaseViewModelDataSource.swift
//  NewsArticle

import Foundation
import RxSwift

protocol BaseViewModelDataSource: AnyObject {
    var updateInfo: Observable<Bool> { get }
    var errorResult: Observable<Error> { get }
    var isLoading: Observable<Bool> { get }
    func viewDidLoad()
}
