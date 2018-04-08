# TPInjector

[![CI Status](http://img.shields.io/travis/threeplay/TPInjector.svg?style=flat)](https://travis-ci.org/threeplay/TPInjector)
[![Version](https://img.shields.io/cocoapods/v/TPInjector.svg?style=flat)](http://cocoapods.org/pods/TPInjector)
[![License](https://img.shields.io/cocoapods/l/TPInjector.svg?style=flat)](http://cocoapods.org/pods/TPInjector)
[![Platform](https://img.shields.io/cocoapods/p/TPInjector.svg?style=flat)](http://cocoapods.org/pods/TPInjector)

## Usage

 To setup dependencies you set or register them on the `DefaultInjector`

```swift
  DefaultInjector.set(key: "api_key", to: "12345678")
  DefaultInjector.set(key: "api_url", to: NSURL(string: "https://someurl.com"))
  DefaultInjector.register(service: NetworkService.self, with: NetworkServiceImpl())
  DefaultInjector.register(service: LoginService.self, with: LoginServiceImpl())
```

To inject dependecies you add `Injectable` protocol to your class/struct definition and `inject` static method to inject dependencies:

```swift
class ClassWithDependecies: Injectable {

  private let networkService = inject(NetworkService.self)!
  private let api_key = inject("api_key", String.self)!
  private let api_url: NSURL = inject("api_url")!

  init(loginService: LoginService = inject()!) {

  }
}
```

## Example

To run the example project, clone the repo, and run `pod install` from the Example directory first.

## Installation

TPInjector is available through [CocoaPods](http://cocoapods.org). To install
it, simply add the following line to your Podfile:

```ruby
pod 'TPInjector'
```


## Author

Eliran Ben-Ezra, eliran@threeplay.com

## License

TPInjector is available under the MIT license. See the LICENSE file for more info.
