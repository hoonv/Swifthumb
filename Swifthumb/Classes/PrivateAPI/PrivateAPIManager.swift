//
//  PrivateAPIManager.swift
//  Pods-Swifthumb_Example
//
//  Created by 채훈기 on 2021/08/23.
//

import Foundation

struct PrivateAPIManager: InfoAPIList, TradeAPIList {
    
    let requester: APIRequester
    let infoAPI: InfoAPIList
    let tradeAPI: TradeAPIList
    
    let apiCallPerSecond = 16

    init(apiKey: String, secretKey: String) {
        requester = APIRequester(apiKey: apiKey, secretKey: secretKey)
        infoAPI = InfoAPI(requester: requester)
        tradeAPI = TradeAPI(requester: requester)
    }
    func account() {
        infoAPI.account()
    }
    
    func balance() {
        infoAPI.balance()
    }
    
    func walletAddress() {
        infoAPI.walletAddress()
    }
    
    func ticker() {
        infoAPI.ticker()
    }
    
    func orders() {
        infoAPI.orders()
    }
    
    func ordersDetail() {
        infoAPI.ordersDetail()
    }
    
    func transactions() {
        infoAPI.transactions()
    }
    
    func place() {
        tradeAPI.place()
    }
    
    func cancel() {
        tradeAPI.cancel()
    }
    
    func marketBuy() {
        tradeAPI.marketBuy()
    }
    
    func marketCell() {
        tradeAPI.marketCell()
    }
    
    func stopLimit() {
        tradeAPI.stopLimit()
    }
    
    func withdrawalCoin() {
        tradeAPI.withdrawalCoin()
    }
    
    func withdrawalKRW() {
        tradeAPI.withdrawalKRW()
    }
}
