import Nimble
import XCTest
import TPInjector
@testable import TPInjector_Example

protocol InjectableService {}
class InjectableServiceImpl: InjectableService {}

class SimpleInjectorTests: XCTestCase {
  var injector: SimpleInjector!

  override func setUp() {
    super.setUp()
    injector = SimpleInjector()
  }

  func test_injector_returning_nil_for_unknown_types() {
    expect(self.injector.get(InjectableService.self)).to(beNil())
    let valueFromKey: InjectableService? = self.injector.get("testing")
    expect(valueFromKey).to(beNil())
    let service: InjectableService? = self.injector.get()
    expect(service).to(beNil())
  }

  func test_injector_regisering_a_service() {
    injector.register(service: InjectableService.self, with: InjectableServiceImpl())
    expect(self.injector.get(InjectableService.self)).to(beAnInstanceOf(InjectableServiceImpl.self))
    let service: InjectableService? = self.injector.get()
    expect(service).to(beAnInstanceOf(InjectableServiceImpl.self))
  }

  func test_injector_setting_any_value() {
    injector.set(key: "value", to: "123")
    expect(self.injector.get("value", String.self)) == "123"
  }
}

