//
//  LoginService.swift
//  TPInjector_Example
//
//  Created by Eliran Ben-Ezra on 4/8/18.
//  Copyright © 2018 CocoaPods. All rights reserved.
//

import TPInjector

protocol LoginService {
  func login()
}

class LoginServiceImpl: LoginService, Injectable {

  private let networkService: NetworkService

  init(networkService: NetworkService = inject(),
       userName: String = inject("user_name")) {
    self.networkService = networkService
    print("UserName: \(userName)")
  }

  func login() {
    print("Using network service to login: \(networkService)")
  }
}
