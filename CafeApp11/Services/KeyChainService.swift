//
//  KeyChainService.swift
//  CafeApp11
//
//  Created by Валентин Коскин on 07.07.2022.
//

import Foundation
import KeychainSwift

class LoginService {
    static let shared = LoginService()
    private init() {}
    let keyChain = KeychainSwift(keyPrefix: "CafeApp11")
}
//let service = LoginService()
//service.keyChain

LoginService.shared.keyChain.set
