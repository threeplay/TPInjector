//
//  AppDelegate.swift
//  TPInjector
//
//  Created by Eliran Ben-Ezra on 04/08/2018.
//  Copyright (c) 2018 Eliran Ben-Ezra. All rights reserved.
//

import Cocoa
import TPInjector

@NSApplicationMain
class AppDelegate: NSObject, NSApplicationDelegate, Injectable {

  func applicationDidFinishLaunching(_ aNotification: Notification) {
    setupDefaultInjector()
    AppDelegate.inject(LoginService.self)?.login()
  }

  func applicationWillTerminate(_ aNotification: Notification) {
    // Insert code here to tear down your application
  }

  private func setupDefaultInjector() {
    DefaultInjector.set(key: "api_key", to: "12345678")
    DefaultInjector.set(key: "api_url", to: NSURL(string: "https://someurl.com"))
    DefaultInjector.set(key: "user_name", to: "userName")
    DefaultInjector.register(service: NetworkService.self, with: NetworkServiceImpl())
    DefaultInjector.register(service: LoginService.self, with: LoginServiceImpl())
  }

}

