// MARK: - Mocks generated from file: NewsArticle/NetworkLayer/Core/WebService.swift at 2021-07-25 22:23:20 +0000

//
//  WebService.swift
//  NewsArticle

import Cuckoo
@testable import NewsArticle

import RxSwift


 class MockWebServiceProtocol: WebServiceProtocol, Cuckoo.ProtocolMock {
    
     typealias MocksType = WebServiceProtocol
    
     typealias Stubbing = __StubbingProxy_WebServiceProtocol
     typealias Verification = __VerificationProxy_WebServiceProtocol

     let cuckoo_manager = Cuckoo.MockManager.preconfiguredManager ?? Cuckoo.MockManager(hasParent: false)

    
    private var __defaultImplStub: WebServiceProtocol?

     func enableDefaultImplementation(_ stub: WebServiceProtocol) {
        __defaultImplStub = stub
        cuckoo_manager.enableDefaultStubImplementation()
    }
    

    

    

    
    
    
     func load<T: Decodable>(resource: Resource<T>) -> Observable<T> {
        
    return cuckoo_manager.call("load(resource: Resource<T>) -> Observable<T>",
            parameters: (resource),
            escapingParameters: (resource),
            superclassCall:
                
                Cuckoo.MockManager.crashOnProtocolSuperclassCall()
                ,
            defaultCall: __defaultImplStub!.load(resource: resource))
        
    }
    

	 struct __StubbingProxy_WebServiceProtocol: Cuckoo.StubbingProxy {
	    private let cuckoo_manager: Cuckoo.MockManager
	
	     init(manager: Cuckoo.MockManager) {
	        self.cuckoo_manager = manager
	    }
	    
	    
	    func load<M1: Cuckoo.Matchable, T: Decodable>(resource: M1) -> Cuckoo.ProtocolStubFunction<(Resource<T>), Observable<T>> where M1.MatchedType == Resource<T> {
	        let matchers: [Cuckoo.ParameterMatcher<(Resource<T>)>] = [wrap(matchable: resource) { $0 }]
	        return .init(stub: cuckoo_manager.createStub(for: MockWebServiceProtocol.self, method: "load(resource: Resource<T>) -> Observable<T>", parameterMatchers: matchers))
	    }
	    
	}

	 struct __VerificationProxy_WebServiceProtocol: Cuckoo.VerificationProxy {
	    private let cuckoo_manager: Cuckoo.MockManager
	    private let callMatcher: Cuckoo.CallMatcher
	    private let sourceLocation: Cuckoo.SourceLocation
	
	     init(manager: Cuckoo.MockManager, callMatcher: Cuckoo.CallMatcher, sourceLocation: Cuckoo.SourceLocation) {
	        self.cuckoo_manager = manager
	        self.callMatcher = callMatcher
	        self.sourceLocation = sourceLocation
	    }
	
	    
	
	    
	    @discardableResult
	    func load<M1: Cuckoo.Matchable, T: Decodable>(resource: M1) -> Cuckoo.__DoNotUse<(Resource<T>), Observable<T>> where M1.MatchedType == Resource<T> {
	        let matchers: [Cuckoo.ParameterMatcher<(Resource<T>)>] = [wrap(matchable: resource) { $0 }]
	        return cuckoo_manager.verify("load(resource: Resource<T>) -> Observable<T>", callMatcher: callMatcher, parameterMatchers: matchers, sourceLocation: sourceLocation)
	    }
	    
	}
}

 class WebServiceProtocolStub: WebServiceProtocol {
    

    

    
     func load<T: Decodable>(resource: Resource<T>) -> Observable<T>  {
        return DefaultValueRegistry.defaultValue(for: (Observable<T>).self)
    }
    
}


// MARK: - Mocks generated from file: NewsArticle/NetworkLayer/Services/NewsNetworkHandler.swift at 2021-07-25 22:23:20 +0000

//
//  NewsNetworkHandler.swift
//  NewsArticle
//
//  Created by Viresh Sharma on 25/07/21.
//  Copyright © 2021 Viresh Sharma. All rights reserved.
//

import Cuckoo
@testable import NewsArticle

import Foundation
import RxSwift


 class MockNewsListNetworkHandling: NewsListNetworkHandling, Cuckoo.ProtocolMock {
    
     typealias MocksType = NewsListNetworkHandling
    
     typealias Stubbing = __StubbingProxy_NewsListNetworkHandling
     typealias Verification = __VerificationProxy_NewsListNetworkHandling

     let cuckoo_manager = Cuckoo.MockManager.preconfiguredManager ?? Cuckoo.MockManager(hasParent: false)

    
    private var __defaultImplStub: NewsListNetworkHandling?

     func enableDefaultImplementation(_ stub: NewsListNetworkHandling) {
        __defaultImplStub = stub
        cuckoo_manager.enableDefaultStubImplementation()
    }
    

    

    

    
    
    
     func getTopHeadlines(_ param: [String: String]?) -> Observable<[NewsModel]> {
        
    return cuckoo_manager.call("getTopHeadlines(_: [String: String]?) -> Observable<[NewsModel]>",
            parameters: (param),
            escapingParameters: (param),
            superclassCall:
                
                Cuckoo.MockManager.crashOnProtocolSuperclassCall()
                ,
            defaultCall: __defaultImplStub!.getTopHeadlines(param))
        
    }
    

	 struct __StubbingProxy_NewsListNetworkHandling: Cuckoo.StubbingProxy {
	    private let cuckoo_manager: Cuckoo.MockManager
	
	     init(manager: Cuckoo.MockManager) {
	        self.cuckoo_manager = manager
	    }
	    
	    
	    func getTopHeadlines<M1: Cuckoo.OptionalMatchable>(_ param: M1) -> Cuckoo.ProtocolStubFunction<([String: String]?), Observable<[NewsModel]>> where M1.OptionalMatchedType == [String: String] {
	        let matchers: [Cuckoo.ParameterMatcher<([String: String]?)>] = [wrap(matchable: param) { $0 }]
	        return .init(stub: cuckoo_manager.createStub(for: MockNewsListNetworkHandling.self, method: "getTopHeadlines(_: [String: String]?) -> Observable<[NewsModel]>", parameterMatchers: matchers))
	    }
	    
	}

	 struct __VerificationProxy_NewsListNetworkHandling: Cuckoo.VerificationProxy {
	    private let cuckoo_manager: Cuckoo.MockManager
	    private let callMatcher: Cuckoo.CallMatcher
	    private let sourceLocation: Cuckoo.SourceLocation
	
	     init(manager: Cuckoo.MockManager, callMatcher: Cuckoo.CallMatcher, sourceLocation: Cuckoo.SourceLocation) {
	        self.cuckoo_manager = manager
	        self.callMatcher = callMatcher
	        self.sourceLocation = sourceLocation
	    }
	
	    
	
	    
	    @discardableResult
	    func getTopHeadlines<M1: Cuckoo.OptionalMatchable>(_ param: M1) -> Cuckoo.__DoNotUse<([String: String]?), Observable<[NewsModel]>> where M1.OptionalMatchedType == [String: String] {
	        let matchers: [Cuckoo.ParameterMatcher<([String: String]?)>] = [wrap(matchable: param) { $0 }]
	        return cuckoo_manager.verify("getTopHeadlines(_: [String: String]?) -> Observable<[NewsModel]>", callMatcher: callMatcher, parameterMatchers: matchers, sourceLocation: sourceLocation)
	    }
	    
	}
}

 class NewsListNetworkHandlingStub: NewsListNetworkHandling {
    

    

    
     func getTopHeadlines(_ param: [String: String]?) -> Observable<[NewsModel]>  {
        return DefaultValueRegistry.defaultValue(for: (Observable<[NewsModel]>).self)
    }
    
}


// MARK: - Mocks generated from file: NewsArticle/Utility/FileManagerHandler/FileManagerHandler.swift at 2021-07-25 22:23:20 +0000

//
//  FileManagerHandler.swift
//  NewsArticle

import Cuckoo
@testable import NewsArticle

import Foundation
import RxSwift


 class MockFileManagerHandlerProtocol: FileManagerHandlerProtocol, Cuckoo.ProtocolMock {
    
     typealias MocksType = FileManagerHandlerProtocol
    
     typealias Stubbing = __StubbingProxy_FileManagerHandlerProtocol
     typealias Verification = __VerificationProxy_FileManagerHandlerProtocol

     let cuckoo_manager = Cuckoo.MockManager.preconfiguredManager ?? Cuckoo.MockManager(hasParent: false)

    
    private var __defaultImplStub: FileManagerHandlerProtocol?

     func enableDefaultImplementation(_ stub: FileManagerHandlerProtocol) {
        __defaultImplStub = stub
        cuckoo_manager.enableDefaultStubImplementation()
    }
    

    

    

    
    
    
     func load<T: Decodable>(resource: FileManagerResource<T>) -> Observable<T> {
        
    return cuckoo_manager.call("load(resource: FileManagerResource<T>) -> Observable<T>",
            parameters: (resource),
            escapingParameters: (resource),
            superclassCall:
                
                Cuckoo.MockManager.crashOnProtocolSuperclassCall()
                ,
            defaultCall: __defaultImplStub!.load(resource: resource))
        
    }
    

	 struct __StubbingProxy_FileManagerHandlerProtocol: Cuckoo.StubbingProxy {
	    private let cuckoo_manager: Cuckoo.MockManager
	
	     init(manager: Cuckoo.MockManager) {
	        self.cuckoo_manager = manager
	    }
	    
	    
	    func load<M1: Cuckoo.Matchable, T: Decodable>(resource: M1) -> Cuckoo.ProtocolStubFunction<(FileManagerResource<T>), Observable<T>> where M1.MatchedType == FileManagerResource<T> {
	        let matchers: [Cuckoo.ParameterMatcher<(FileManagerResource<T>)>] = [wrap(matchable: resource) { $0 }]
	        return .init(stub: cuckoo_manager.createStub(for: MockFileManagerHandlerProtocol.self, method: "load(resource: FileManagerResource<T>) -> Observable<T>", parameterMatchers: matchers))
	    }
	    
	}

	 struct __VerificationProxy_FileManagerHandlerProtocol: Cuckoo.VerificationProxy {
	    private let cuckoo_manager: Cuckoo.MockManager
	    private let callMatcher: Cuckoo.CallMatcher
	    private let sourceLocation: Cuckoo.SourceLocation
	
	     init(manager: Cuckoo.MockManager, callMatcher: Cuckoo.CallMatcher, sourceLocation: Cuckoo.SourceLocation) {
	        self.cuckoo_manager = manager
	        self.callMatcher = callMatcher
	        self.sourceLocation = sourceLocation
	    }
	
	    
	
	    
	    @discardableResult
	    func load<M1: Cuckoo.Matchable, T: Decodable>(resource: M1) -> Cuckoo.__DoNotUse<(FileManagerResource<T>), Observable<T>> where M1.MatchedType == FileManagerResource<T> {
	        let matchers: [Cuckoo.ParameterMatcher<(FileManagerResource<T>)>] = [wrap(matchable: resource) { $0 }]
	        return cuckoo_manager.verify("load(resource: FileManagerResource<T>) -> Observable<T>", callMatcher: callMatcher, parameterMatchers: matchers, sourceLocation: sourceLocation)
	    }
	    
	}
}

 class FileManagerHandlerProtocolStub: FileManagerHandlerProtocol {
    

    

    
     func load<T: Decodable>(resource: FileManagerResource<T>) -> Observable<T>  {
        return DefaultValueRegistry.defaultValue(for: (Observable<T>).self)
    }
    
}

