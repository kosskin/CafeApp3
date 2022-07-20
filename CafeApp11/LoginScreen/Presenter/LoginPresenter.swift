//
//  File.swift
//  CafeApp11
//
//  Created by Валентин Коскин on 07.07.2022.
//

import Foundation

protocol LoginPresenterProtocol {
    func tapEnterButton(login: String, password: String)
    func tapSignUpButton(login: String, password: String)
}

final class LoginPresenter: LoginPresenterProtocol {
    
    var view: LoginView?
    var user: UserModel?
    
    func tapEnterButton(login: String, password: String) {
        //view?.showAlert(message: "Неверный логин или пароль")
        guard let password = LoginService.shared.keyChain.get(login) else {
            view?.showAlert(message: "Такого пользователя нет")
            return
        }
        let nowUser = UserModel(login: login)
        showNextVC(user: nowUser)
    }
    
    
    
    func tapSignUpButton(login: String, password: String) {
        if login.count < 4 || password.count < 4 {
            view?.showAlert(message: "Слишком мало символов")
        }
        
        guard LoginService.shared.keyChain.get(login) == nil else {
            view?.showAlert(message: "Пользователь уже зарегистрирован")
            return
        }
        
        LoginService.shared.keyChain.set(password, forKey: login)
        user = UserModel(login: login)

    }
    
    func showNextVC(user: UserModel) {
        let vc = OrderConfigurator.config()
        view?.present(vc, animated: true, completion: nil)
    }
}

