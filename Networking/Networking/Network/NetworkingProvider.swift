//
//  NetworkingProvider.swift
//  Networking
//
//  Created by Daniel Cazorro Frias  on 14/1/24.
//

import Foundation
import Alamofire

final class NetworkingProvider {
    
    static let shared = NetworkingProvider()
    
    private let kBaseUrl = "https://gorest.co.in/public-api/"
    private let kStatusOk = 200...299
    
    func getUser(id: Int, success: @escaping (_ user: User) -> (), failures: @escaping (_ error: Error?) -> ()) {
        
        let url = "\(kBaseUrl)users/\(id)"
        
        AF.request(url, method: .get).validate(statusCode: kStatusOk).responseDecodable (of: UserResponse.self, decoder: DateDecoder()) {
            response in
            
            if let user = response.value?.data {
                success(user)
                
            } else {
                failures(response.error)
            }
        }
        
    }
    
}
