Pod::Spec.new do |spec|

  spec.name         = "iOSGenricPods"
  spec.version      = "1.0.0"
  spec.summary      = "A short description of iOSGenricPods."
  spec.description  = "A complete description of iOSGenricPods"

  spec.platform     = :ios, "12.1"

  spec.homepage     = "http://EXAMPLE/iOSGenricPods"
  spec.license      = "MIT"
  spec.author             = { "Ali Akhtar" => "aliakhtarcs11020@gmail.com" }
  spec.source       = { :path => '.' }
  spec.source_files  = "iOSGenricPods"
  spec.exclude_files = "Classes/Exclude"
  spec.swift_version = "4.2"

end
