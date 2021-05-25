//
//  defaultManager.swift
//  iOSGenricPods
//
//  Created by Riddhi Patel on 21/05/21.
//

import UIKit
public class defaultManager{
    public init(){
    }

    public func saveValueInDefault<T>(value: T, using key : String) {
//        let encodedData = try! JSONEncoder().encode(value)
         UserDefaults.standard.setValue(value, forKey: key)
         UserDefaults.standard.synchronize()
     }
    public func getValue<T>(_ key: String) -> T? {
        if let data = UserDefaults.standard.data(forKey: key){
            return data as? T
           }
        return nil
    }
    static func createParser<T>(innerParser:T) -> T {
        return "OuterParser(innerParser:innerParser)" as! T
       }
}

