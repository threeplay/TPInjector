//
//  NetworkService.swift
//  TPInjector_Example
//
//  Created by Eliran Ben-Ezra on 4/8/18.
//  Copyright © 2018 CocoaPods. All rights reserved.
//
import TPInjector

protocol NetworkService {
}

class NetworkServiceImpl: NetworkService, Injectable {
  let api_key = inject("api_key", String.self)
  let api_url: NSURL = inject("api_url")
  let api_args = tryInject("api_args", Array<String>.self) ?? []

  init() {
    print("Network service at \(api_url) using key: \(api_key) and args: \(api_args)")
  }
}

