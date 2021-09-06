//
//  TickerResponse.swift
//  Pods-Swifthumb_Example
//
//  Created by 채훈기 on 2021/09/03.
//

import Foundation

public struct TickerResponse: Codable {
    public let status: String
    public let data: [String: OneTicker]
    enum CodingKeys: String, CodingKey {
        case data = "data"
        case status = "status"
    }
}

public struct OneTicker: Codable {
    public let openingPrice, closingPrice, minPrice, maxPrice: String
    public let unitsTraded, accTradeValue, prevClosingPrice, unitsTraded24H: String
    public let accTradeValue24H, fluctate24H, fluctateRate24H: String

    enum CodingKeys: String, CodingKey {
        case openingPrice = "opening_price"
        case closingPrice = "closing_price"
        case minPrice = "min_price"
        case maxPrice = "max_price"
        case unitsTraded = "units_traded"
        case accTradeValue = "acc_trade_value"
        case prevClosingPrice = "prev_closing_price"
        case unitsTraded24H = "units_traded_24H"
        case accTradeValue24H = "acc_trade_value_24H"
        case fluctate24H = "fluctate_24H"
        case fluctateRate24H = "fluctate_rate_24H"
    }
}
