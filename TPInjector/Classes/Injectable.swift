//
//  Injectable.swift
//
//  Created by Eliran Ben-Ezra on 4/8/18.

public protocol Injectable {}

public extension Injectable {
  public static var injector: Injector { return DefaultInjector.injector }

  public static func inject<T>(_ key: String) -> T? {
    return injector.get(key)
  }

  public static func inject<T>(_ key: String, _ type: T.Type) -> T? {
    return injector.get(key)
  }

  public static func inject<T>(_ service: T.Type) -> T? {
    return injector.get()
  }

  public static func inject<T>() -> T? {
    return injector.get()
  }
}
