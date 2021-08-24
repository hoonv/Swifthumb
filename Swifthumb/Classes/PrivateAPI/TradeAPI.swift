//
//  TradeAPI.swift
//  Pods-Swifthumb_Example
//
//  Created by 채훈기 on 2021/08/23.
//

import Foundation

protocol TradeAPIList {
    func place()
    func cancel()
    func marketBuy()
    func marketCell()
    func stopLimit()
    func withdrawalCoin()
    func withdrawalKRW()
}

public struct TradeAPI: TradeAPIList {
    
    let requester: APIRequester
    
    init(requester: APIRequester) {
        self.requester = requester
    }
    
    public func place() {
        
    }
    public func cancel() {
        
    }
    public func marketBuy() {
        
    }
    public func marketCell() {
        
    }
    public func stopLimit() {
        
    }
    public func withdrawalCoin() {
        
    }
    public func withdrawalKRW() {
        
    }
    
}
