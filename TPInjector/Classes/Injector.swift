//
//  Injector.swift
//
//  Created by Eliran Ben-Ezra on 4/1/18.
//  Copyright © 2018 Threeplay. All rights reserved.

public protocol Injector {
  func get<T>(_ key: String) -> T?
}

public protocol InjectorRegisterService {
  func register<T>(service: T.Type, with implementation: T)
}

public protocol InjectorKeySetter {
  func set<T>(key: String, to value: T)
}

public extension Injector {
  public func get<T>() -> T? {
    return get(serviceKey(T.self))
  }

  /// Conveniance method to allow:
  ///   let service = get(Service.self)
  public func get<T>(_ serviceType: T.Type) -> T? {
    return get()
  }

  public func get<T>(_ key: String, _ type: T.Type) -> T? {
    return get(key)
  }

  internal func serviceKey<T>(_ service: T) -> String {
    return String(describing: type(of: service))
  }
}
