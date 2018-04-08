//
//  DefaultInjector.swift
//
//  Created by Eliran Ben-Ezra on 4/1/18.
//  Copyright © 2018 Threeplay. All rights reserved.

public struct DefaultInjector {
  public static var injector: Injector = SimpleInjector()

  public static func register<T>(service: T.Type, with implementation: T) {
    (injector as? InjectorRegisterService)?.register(service: service, with: implementation)
  }

  public static func set<T>(key: String, to value: T) {
    (injector as? InjectorKeySetter)?.set(key: key, to: value)
  }

  public static func get<T>() -> T? { return DefaultInjector.injector.get() }
  public static func get<T>(_ constantKey: String) -> T? { return DefaultInjector.injector.get(constantKey) }
}
