extension Salutation {
  func toDict()->  [String: String] {
    return ["name": name, "greeting": greeting]
  }
}


@objc(TestBridge)
class TestBridge: NSObject {
  
  @objc(addEvent:location:)
  func addEvent(name: String, location: String) {
    ClientSDK.shared.sayHello(name, to: location)
  }
  
  @objc(getSalutations:resolver:rejecter:)
  func getSalutations(name: String, resolver resolve: @escaping RCTPromiseResolveBlock, rejecter reject: @escaping RCTPromiseRejectBlock) {
    let salutations = [Salutation(name: "Fabrice", greeting: "Hello"), Salutation(name: "kamile", greeting: "hello")]
    
    resolve(salutations)
    
    // reject("ERRTOTO", "ToTo", NSError(domain: "RN", code: 1, userInfo: [:]))
  }
  
  @objc(startSendingGreetings)
  func startSendingGreetings() {
    // To put on the main thread
    DispatchQueue.main.async {
      Timer.scheduledTimer(withTimeInterval: 2.0, repeats: true) { timer in
        TestEventBridge.shared.sendGreetings(name: "Ben")
      }
    }
  }
  
}
