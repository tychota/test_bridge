
@objc(TestBridge)
class TestBridge: NSObject {
  
  @objc(addEvent:location:)
  func addEvent(name: String, location: String) {
    ClientSDK.shared.sayHello(name, to: location)
  }
  
}
