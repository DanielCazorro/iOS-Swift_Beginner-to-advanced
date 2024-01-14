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
    private let kToken = "88c84a9b078ad30f15786cff62b8933febf9afc8eca74f2fbd939f0e55944371"
    
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
    
    func addUser(user: NewUser, success: @escaping (_ user: User) -> (), failures: @escaping (_ error: Error?) -> ()) {
        
        let url = "\(kBaseUrl)users"
        
        let headers: HTTPHeaders = [.authorization(bearerToken: kToken)]
        
        AF.request(url, method: .post, parameters: user, encoder: JSONParameterEncoder.default, headers: headers).validate(statusCode: kStatusOk).responseDecodable (of: UserResponse.self, decoder: DateDecoder()) {
            response in
            
            if let user = response.value?.data, user.id != nil {
                success(user)
                
            } else {
                failures(response.error)
            }
        }
        
    }
    
}
