//
//  APIRequester.swift
//  Pods
//
//  Created by 채훈기 on 2021/08/24.
//

import Foundation
import CryptoKit

public class APIRequester {
    
    public typealias Params = [String: String]
    struct Request {
        let url: String
        let sign: String
        let nonce: String
        let queryData: String
    }
    
    private let apiKey: String
    private let secretKey: String
    private var nonce: String {
        return String(Int(Date().timeIntervalSince1970 * 1000))
    }
    
    public init(apiKey: String, secretKey: String) {
        self.apiKey = apiKey
        self.secretKey = secretKey
    }
    
    public func request(endPoint: String, params: Params) {
        let specs = requiredSpec(endPoint: endPoint, params: params)
        var request = URLRequest(url: URL(string: specs.url)!)
        request.httpMethod = "POST"
        request.httpBody = specs.queryData.data(using: .utf8)
        request.addValue(self.apiKey, forHTTPHeaderField: "Api-Key")
        request.addValue(specs.sign, forHTTPHeaderField: "Api-Sign")
        request.addValue(specs.nonce, forHTTPHeaderField: "Api-Nonce")
        URLSession.shared.dataTask(with: request) { data, _, _ in
            guard let data = data else { return }
            let json = try? JSONDecoder().decode(AccountResponse.self, from: data)
            print(json ?? "")
            print(String(data: data, encoding: .utf8)!)
        }.resume()
    }
    
    private func requiredSpec(endPoint: String, params: Params) -> Request {
        let url = Constant.baseUrl + endPoint
        let queryData = queryToString(url: url, param: params)
        let n = nonce
        let data = [endPoint, queryData, n]
            .joined(separator: "\0")
            .data(using: .utf8)!
        let sign = apiSign(data: data)
        return Request(url: url, sign: sign, nonce: n, queryData: queryData)
    }
    
    private func apiSign(data: Data) -> String {
        let key = SymmetricKey(data: secretKey.data(using: .utf8)!)
        let signature = HMAC<SHA512>.authenticationCode(for: data, using: key)
        let hexString = Data(signature).map { String(format: "%02hhx", $0) }.joined().data(using: .utf8)!
        let sign = hexString.base64EncodedString()
        return sign
    }
    
    private func queryToString(url: String, param: Params) -> String {
        var component = URLComponents(string: url)!
        component.queryItems = param
            .sorted(by: {$0.key < $1.key})
            .map { URLQueryItem(name: $0.key, value: $0.value) }
        return component
            .query?
            .addingPercentEncoding(
                withAllowedCharacters: .urlHostAllowed) ?? ""
    }

}
