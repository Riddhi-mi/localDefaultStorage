Pod::Spec.new do |spec|

  spec.name         = "iOSGenricPods"
  spec.version      = "1.0.0"
  spec.summary      = "A cocoaPod library written in swift."
  spec.description  = "A cocoaPod library written in swift for local storage ."

  spec.platform     = :ios, "12.1"

  spec.homepage     = "https://github.com/Riddhi-mi/localDefaultStorage/tree/main/iOSGenricPods"
  spec.license      = "MIT"
  spec.author             = { "RiddhiPatel" => "riddhi.patel@mindinventory.com" }
  spec.source       = { :git => "https://github.com/jeantimex/SwiftyLib.git", :tag => "#{spec.version}"}
  spec.source_files  = "iOSGenricPods/**/*.{h,m,swift}"
  spec.exclude_files = "Classes/Exclude"
  spec.swift_version = "4.2"

end
