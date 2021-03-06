//
//  InfoAPI.swift
//  Pods-Swifthumb_Example
//
//  Created by 채훈기 on 2021/08/23.
//

import Foundation

protocol InfoAPIList {
    func account(orderCurrency: String)
    func balance()
    func walletAddress()
    func ticker()
    func orders()
    func ordersDetail()
    func transactions()
}

public struct InfoAPI: InfoAPIList {
    
    let infoURL = "/info"
    let params = ["order_currency": "BTC",
                  "payment_currency": "KRW"]
    let requester: APIRequester
    
    init(requester: APIRequester) {
        self.requester = requester
    }
    
    public func account(orderCurrency: String = "BTC") {
        let endpoint = infoURL + "/account"
        var newParams = params
        newParams["endpoint"] = endpoint
        newParams["order_currency"] = orderCurrency
        requester.request(endPoint: endpoint, params: newParams)
    }
    
    public func balance() {
        let endpoint = infoURL + "/balance"
        var newParams = params
        newParams["endpoint"] = endpoint
        newParams["currency"] = "TEMCO"

        requester.request(endPoint: endpoint, params: newParams)
    }
    
    public func walletAddress() {
        let endpoint = infoURL + "/wallet_address"
        var newParams = params
        newParams["endpoint"] = endpoint
        requester.request(endPoint: endpoint, params: newParams)
        
    }
    
    public func ticker() {
        let endpoint = infoURL + "/ticker"
        var newParams = params
        newParams["endpoint"] = endpoint
        requester.request(endPoint: endpoint, params: newParams)
    }
    
    public func orders() {
        
    }

    public func ordersDetail() {
        
    }

    public func transactions() {
        
    }

}
