//
//  LoginConfigurator.swift
//  CafeApp11
//
//  Created by Валентин Коскин on 08.07.2022.
//

import UIKit

class LoginConfigurator {
    static func config() -> UIViewController {
        let view = LoginView()
        let presenter = LoginPresenter()
        view.presenter = presenter
        presenter.view = view
        
        return view
    }
    
    

}
