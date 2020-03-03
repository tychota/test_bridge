
@objc(TestBridge)
class TestBridge: NSObject {
  
  @objc(addEvent:location:)
  func addEvent(name: String, location: String) {
    _RCTLogJavaScriptInternal(RCTLogLevel.info, "Pretending to create an event \(name) at \(location)");
  }
  
}
