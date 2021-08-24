//
//  InfoAPI.swift
//  Pods-Swifthumb_Example
//
//  Created by 채훈기 on 2021/08/23.
//

import Foundation

protocol InfoAPIList {
    func account()
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
    
    public func account() {
        let endpoint = infoURL + "/account"
        var newParams = params
        newParams["endpoint"] = endpoint
        requester.request(endPoint: endpoint, params: newParams)
    }
    
    public func balance() {
        let endpoint = infoURL + "/balance"
        var newParams = params
        newParams["endpoint"] = endpoint
        requester.request(endPoint: endpoint, params: newParams)
    }
    
    public func walletAddress() {
        
    }
    
    public func ticker() {
        
    }
    
    public func orders() {
        
    }

    public func ordersDetail() {
        
    }

    public func transactions() {
        
    }

}
