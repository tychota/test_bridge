class ClientSDK {
  static let shared = ClientSDK()
  
  func sayHello(_ name1:String, to name2:String) {
    print("\(name1) says Hello to \(name2)")
  }
}

struct Salutation {
  var name: String
  var greeting: String
}
