# PMOUISetter
[![License](https://img.shields.io/cocoapods/l/PMOUISetter?color=a)]
[![SPM supported](https://img.shields.io/badge/SPM-supported-DE5C43.svg?style=flat)]
[![Version](https://img.shields.io/cocoapods/v/PMOUISetter)]
[![Platform](https://img.shields.io/cocoapods/p/PMOUISetter?color=green)]

Helper for UI Elements

## Installation

### CocoaPods

PMOUISetter is available through [CocoaPods](http://cocoapods.org). To install
it, simply add the following lines to your Podfile:

```ruby
use_frameworks!
pod 'PMOUISetter'
```

### Swift Package Manager

PMOUISetter is also available through [Swift Package Manager](https://github.com/apple/swift-package-manager/).

#### Xcode

Select `File > Add Packages... > Add Package Dependency...`,  

<img src="https://raw.githubusercontent.com/plusminusone-tr/PMOUISetter/master/Screenshots/01.png" width="800px" />

## Usage

```swift
@IBOutlet private weak var imageView: UIImageView!
@IBOutlet private weak var titleLabel: UILabel!
@IBOutlet private weak var infoLabel: UILabel!
@IBOutlet private weak var tableView: UITableView!

func prepareLabels() {
    titleLabel
        .numberOfLines(2)
        .font(.boldSystemFont(ofSize: 20.0))
        .textColor(.black)
        .text("Title label")
        .minimumScaleFactor(0.8)
    
    infoLabel
        .numberOfLines(3)
        .font(.systemFont(ofSize: 16))
        .textColor(.black)
        .text("Info label")
}

func prepareImageView() {
    imageView
        .contentMode(.scaleAspectFill)
        .cornerRadius(30.0)
}

func prepareTableView() {
    tableView
        .delegate(self)
        .dataSource(self)
        .registerWithNib(UITableViewCell.self)
        .separatorStyle(.none)
        .backgroundColor(.white)
        .estimatedRowHeight(250.0)
        .keyboardDismissMode(.onDrag)
    }
```