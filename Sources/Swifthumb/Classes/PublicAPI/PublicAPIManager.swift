//
//  PublicAPIManager.swift
//  Pods-Swifthumb_Example
//
//  Created by 채훈기 on 2021/09/03.
//

import Foundation

public struct PublicAPIManager {
    
    public init() {
        
    }
    
    public func getAllTicker(completionHander: @escaping (TickerResponse) -> ()) {

        guard let url = URL(string: "https://api.bithumb.com/public/ticker/ALL") else { return }
        
        URLSession.shared.dataTask(with: url) { d, r, e in
            guard let data = d else { return }
            var temp = String(data: data, encoding: .utf8)!
            temp.removeLast(25)
            temp += "}}"
            guard let json = try? JSONDecoder().decode(TickerResponse.self, from: temp.data(using: .utf8)!) else { return }
            completionHander(json)
        }.resume()
    }
}
