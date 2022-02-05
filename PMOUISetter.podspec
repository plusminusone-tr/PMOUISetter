Pod::Spec.new do |s|
    s.name         = "PMOUISetter"
    s.version      = "0.1.0"
    s.summary      = "PMOUISetter: PMOUISetter"
    s.description  = "Helper for UIKit UI Elements."
    s.homepage     = "https://github.com/plusminusone-tr/PMOUISetter.git"
    s.license = { :type => "MIT", :file => "LICENSE" }
    s.author             = { "PlusMinusOne Dev Team" => "devteam@plusminusone.co" }
    s.source       = { :git => "https://github.com/plusminusone-tr/PMOUISetter.git", :branch => "main", :tag => "#{s.version}" }
    s.source_files  = "PMOUISetter/**/*.{swift,h,m}"
    s.vendored_frameworks = "PMOUISetter.xcframework"
    s.platform = :ios
    s.swift_version = "5.5"
    s.ios.deployment_target  = '11.0'
    s.requires_arc = true
end