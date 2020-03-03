
@objc(TestBridge)
class TestBridge: NSObject {
  
  @objc(addEvent:location:)
  func addEvent(name: String, location: String) {
    ClientSDK.shared.sayHello(name, to: location)
  }
  
  @objc(getSalutations:resolver:rejecter:)
  func getSalutations(name: String, resolver resolve: @escaping RCTPromiseResolveBlock, rejecter reject: @escaping RCTPromiseRejectBlock) {
    resolve("Hello")
  }
  
}
