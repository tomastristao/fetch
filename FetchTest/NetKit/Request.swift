//
//  Request.swift
//  FetchTest
//
//  Created by Tomas Tristao on 03/07/2024.
//

import Alamofire
import Foundation

struct Request<T: Codable> {
    let path: String
    let method: HTTPMethod
    let payload: Parameters?
    let encoding: ParameterEncoding
    let responseType: T.Type
    
    init(
        path: String,
        method: HTTPMethod = .get,
        payload: Parameters? = nil,
        encoding: ParameterEncoding = JSONEncoding.default,
        responseType: T.Type
    ) {
        self.path = path
        self.method = method
        self.payload = payload
        self.encoding = encoding
        self.responseType = responseType
    }
}
