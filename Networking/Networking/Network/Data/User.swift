//
//  User.swift
//  Networking
//
//  Created by Daniel Cazorro Frias  on 14/1/24.
//

import Foundation

/*
 "code":200,
 "meta":null,
 "data:{
    "id":123,
    "name":"Aatreya Agarwal",
     "email":"agarwal_aatreya@simonis-aufderhar.name",
     "gender":"Male",
     "status":"Inactive",
     "created_ad":"2020-10-10T03:50:06.151+05:30",
     "updated_at":"2020-10-10T03:50:06.151+05:30"
    }
 }
 */

struct UserResponse: Decodable {
    
    let code: Int?
    let meta: Meta?
    let data: User?
    
}

struct User: Decodable {
    
    let ide: Int?
    let name: String?
    let email: String?
    let gender: String?
    let status: String?
    //let created_ad: Date?
    //let updated_at: Date?
    
}

struct Meta: Decodable {
    
}
