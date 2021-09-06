
import Foundation

public class Swifthumb {
    
    
    let privateAPIManager: PrivateAPIManager
    let publicAPIManager: PublicAPIManager

    public init(apiKey: String, secretKey: String) {
        privateAPIManager = PrivateAPIManager(apiKey: apiKey, secretKey: secretKey)
        publicAPIManager = PublicAPIManager()
    }
    
    public func getBalance() {
        privateAPIManager.infoAPI.balance()
    }
    
    public func getAllTicker(completionHandler: @escaping (TickerResponse) -> ()) {
        publicAPIManager.getAllTicker(completionHander: completionHandler)
    }
}
