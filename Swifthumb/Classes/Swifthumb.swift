
import Foundation

public class Swifthumb {
    
    private let apiKey: String
    private let secretKey: String
    
    public init(apiKey: String, secretKey: String) {
        self.apiKey = apiKey
        self.secretKey = secretKey
    }
    
    public func hello() {
        print("hello")
    }
    
}
