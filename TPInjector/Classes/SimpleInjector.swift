//
//  StaticInjector.swift
//
//  Created by Eliran Ben-Ezra on 4/1/18.
//  Copyright © 2018 Threeplay. All rights reserved.

public class SimpleInjector: Injector, InjectorRegisterService, InjectorKeySetter {
  private var injectables = [String: Any]()

  public init() {
  }

  public func get<T>(_ key: String) -> T? {
    return injectables[key] as? T
  }

  public func register<T>(service: T.Type, with implementation: T) {
    injectables[serviceKey(service)] = implementation
  }

  public func set<T>(key: String, to value: T) {
    injectables[key] = value
  }
}
