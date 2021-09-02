
import Foundation

public class Swifthumb {
    
    
    let privateAPIManager: PrivateAPIManager
    
    public init(apiKey: String, secretKey: String) {
        privateAPIManager = PrivateAPIManager(apiKey: apiKey, secretKey: secretKey)
    }
    
    public func hello() {
        privateAPIManager.infoAPI.balance()
    }
}
