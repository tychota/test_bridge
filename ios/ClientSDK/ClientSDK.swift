class ClientSDK {
  static let shared = ClientSDK()
  
  func sayHello(_ name1:String, to name2:String) {
    print("\(name1) says Hello to \(name2)")
  }
}
