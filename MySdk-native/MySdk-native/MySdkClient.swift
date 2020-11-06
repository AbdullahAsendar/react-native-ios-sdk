//
//  MySdkClient.swift
//  MySdk-native
//
//  Created by Abdullah Asendar on 10/29/20.
//
import React

public class MySdkClient {
    // SHOULD BE THE SAME NAME DEFINED IN ./app.json
    private let MODULE_NAME: String = "MySdk"
    
    private let environment: Environment;
    
    public init(_ environment: Environment) {
        self.environment = environment;
    }

    public func getView() -> UIView{
        
        let JS_BUNDLE = self.getBundle()
            
        let view = RCTRootView(
            bundleURL: JS_BUNDLE,
            moduleName: MODULE_NAME,
            initialProperties:nil,
            launchOptions: nil)
        
        return view;
        
    }
    
    private func getBundle()-> URL {
        // USE FOR DEBUGGING, NEEDS A BUNDLER TO BE RUNNING
        if self.environment == Environment.DEBUG {
            return URL(string: "http://localhost:8081/index.bundle?platform=ios")!
        }
        
        // USE FOR PRODUCTION, NEEDS A .js MINIFIED BUNDLE
        return Bundle(for: MySdkClient.self).url(forResource: "index.ios", withExtension: "bundle")!
    }
}

public enum Environment: String, CustomStringConvertible {
    case PRODUCTION = "PRODUCTION"
    case DEBUG = "DEBUG"
    
    public var description: String {
        get {
            return self.rawValue
        }
    }
}
