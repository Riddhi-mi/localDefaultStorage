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
//    public func toOptional<T>(_ key: String) -> T?
//    {
//        if(key == ""){
//            return key as? T
//        }
//        else { return nil }
//    }

    public func saveValueInDefault<T : Codable>(value: T, using key : String) {
        let encodedData = try! JSONEncoder().encode(value)
         UserDefaults.standard.setValue(encodedData, forKey: key)
         UserDefaults.standard.synchronize()
     }
    public func getValue<T: Decodable>(_ key: String) -> T? {
        if let data = UserDefaults.standard.data(forKey: key),
           let value = try? JSONDecoder().decode(T.self, from: data) {
               return value
           }
        return nil
    }
    static func createParser<T>(innerParser:T) -> T {
        return "OuterParser(innerParser:innerParser)" as! T
       }
}

