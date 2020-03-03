enum TestEventBridgeEvent: String {
  case hello = "TestEventBridge/hello-1"
  case bye = "TestEventBridge/bye"
}


@objc(TestEventBridge)
class TestEventBridge: RCTEventEmitter {
  // MARK: - Singleton
  
  public static var shared: TestEventBridge!
  
  override init() {
    super.init()
    TestEventBridge.shared = self
  }
  
  // MARK: - Event
  
  override func supportedEvents() -> [String]! {
    return [
      TestEventBridgeEvent.hello.rawValue,
      TestEventBridgeEvent.bye.rawValue
    ]
  }
  
  override func constantsToExport() -> [AnyHashable : Any]! {
    return [
      "events": [
        "hello": TestEventBridgeEvent.hello.rawValue,
        "bye": TestEventBridgeEvent.bye.rawValue,
      ],
    ]
  }
  
  func sendGreetings(name: String) {
    sendEvent(withName: TestEventBridgeEvent.hello.rawValue, body: name)
  }
}
