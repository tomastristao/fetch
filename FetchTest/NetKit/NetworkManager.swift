//
//  NetworkManager.swift
//  FetchTest
//
//  Created by Tomas Tristao on 03/07/2024.
//

import Alamofire
import Combine
import Foundation

protocol NetworkManagerProtocol {
    func request<T: Decodable>(_ requestData: Request<T>) async throws -> T
}

final class NetworkManager: NetworkManagerProtocol {
    
    func request<T: Decodable>(_ requestData: Request<T>) async throws -> T {
        return try await withCheckedThrowingContinuation { continuation in
            AF.request(requestData.path,
                       method: requestData.method,
                       parameters: requestData.payload,
                       encoding: requestData.encoding)
            .validate(statusCode: 200..<500)
            .responseDecodable(of: requestData.responseType.self) { response in
                switch response.result {
                case .success(let dataModel):
                    continuation.resume(returning: dataModel)
                case .failure(let error):
                    continuation.resume(throwing: AppError.someWhileDecoding(error))
                }
            }
        }
    }
}

public enum AppError: Error {
    case someWhileDecoding(Error)
    case some(Error)
}
