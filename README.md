iOSGenricPods is a clean and easy-to-use code which is useful for integrating local storages like UserDefaults, plist and Keychain.

Installation
From CocoaPods
First, add the following line to your Podfile 
 
pod 'iOSGenricPods', '~> 1.0.0’

If you want to use the latest features of iOSGenricPods use normal external source dependencies.
pod 'iOSGenricPods', :git => 'https://cocoapods.org/pods/iOSGenricPods'

This pulls from the master branch directly.
Second, install iOSGenricPods into your project:
pod install

Usage
See sample Xcode Project 
import iOSGenricPods 

Create object for different storages like default, plist or keychain 

let manager = defaultManager()

Now using this object you can access method for storing data locally in UserDefault.

manager.saveValueInDefault(value: "TestValue", using: "TestKey")

//Pass any type of values(Int, String, Class object,Double,Float) in the value parameter with the dynamic keys you want to set and it will store the values inside the UserDefault

The same way you can get the value by using the object manager

let valueFetch:String = manager.getValue("TestKey")

Define type data Type in which you want to fetch the value and that’w way you can get the stored value.


FOLLOW THE SAME STEPS TO ACCESS  THE METHODS FOR STORING AND RETRIEVING DATA FROM THE KEYCHAIN AND PLIST


