//
//  File.swift
//  Pods
//
//  Created by 채훈기 on 2021/08/24.
//

import Foundation

struct AccountResponse: Codable {
    let status: String
    let data: AccontData
}

struct AccontData: Codable {
    let created: String
    let accountId: String
    let orderCurrency: String
    let paymentCurrency: String
    let tradeFee: String
    let balance: String
    
    enum CodingKeys: String, CodingKey {
        case created
        case accountId = "account_id"
        case orderCurrency = "order_currency"
        case paymentCurrency = "payment_currency"
        case tradeFee = "trade_fee"
        case balance
    }
}
