//
//  File.swift
//  Pods
//
//  Created by 채훈기 on 2021/08/24.
//

import Foundation


// MARK: - Welcome
struct BalanceRes: Codable {
    let status: String
    let data: BalanceData<String>
}

// MARK: - DataClass
struct BalanceData<T>: Codable {
    let totalKrw, inUseKrw, availableKrw, totalTemco: String
    let inUseTemco, availableTemco, xcoinLastTemco: String
    enum CodingKeys: String, CodingKey {
        case totalKrw = "total_krw"
        case inUseKrw = "in_use_krw"
        case availableKrw = "available_krw"
        case totalTemco = "total_temco"
        case inUseTemco = "in_use_temco"
        case availableTemco = "available_temco"
        case xcoinLastTemco = "xcoin_last_temco"
    }
}
