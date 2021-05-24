//
//  plistManager.swift
//  iOSGenricPods
//
//  Created by Riddhi Patel on 24/05/21.
//

import Foundation

enum PlistError: Error {
       case failedToWrite
       case fileDoesNotExist
}

extension Encodable {
  func dictionary() throws -> [String: Any] {
    let data = try JSONEncoder().encode(self)
    guard let dictionary = try JSONSerialization.jsonObject(with: data, options: .allowFragments) as? [String: Any] else {
      throw NSError()
    }
    return dictionary
  }
}
public class plistManager
{
    
    private let fileManager = FileManager.default
    let name:String
    public  init?(named :String) {
        self.name = named
    }

    public func defaultPath() -> String{
        let paths = NSSearchPathForDirectoriesInDomains(.documentDirectory, .userDomainMask, true)[0] as String
        return paths.appending("/\(self.name).plist")
    }
    
    //GET AND SET THE DICTIONARY DATA INTO PLIST

    public func saveDatatoPlist<T : Codable>(value: T, using key : String) {
        let paths = NSSearchPathForDirectoriesInDomains(.documentDirectory, .userDomainMask, true)[0] as String
        let path = paths.appending("/\(self.name).plist")
        let fileManager = FileManager.default
        if (!(fileManager.fileExists(atPath: path)))
        {
            do {
                let bundlePath : NSString = Bundle.main.path(forResource:  self.name, ofType: "plist")! as NSString
                try fileManager.copyItem(atPath: bundlePath as String, toPath: path)
            }catch {
               print(error)
            }
        }
        let plistDict:NSMutableDictionary = NSMutableDictionary(contentsOfFile: path)!
        if(type(of: value) is AnyClass){
            plistDict.setValue(value.dictionary, forKey: key)
        }
        else {
            plistDict.setValue(value, forKey: key)
        }
        plistDict.write(toFile: path, atomically: true)
    }
    public func getDictionary<T: Decodable>(key : String) -> T {
        let paths = NSSearchPathForDirectoriesInDomains(.documentDirectory, .userDomainMask, true)[0] as String
        let path = paths.appending("/\(self.name).plist")
        guard fileManager.fileExists(atPath: path) else {
            return self as! T
        }
        let valueOfDictionary = NSDictionary(contentsOfFile: path)
        let value1 = valueOfDictionary?.object(forKey: key)
        print(value1!)
        return value1 as! T
    }
   
}
