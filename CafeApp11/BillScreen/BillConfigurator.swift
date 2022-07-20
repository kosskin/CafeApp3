//
//  BillConfigurator.swift
//  CafeApp11
//
//  Created by Валентин Коскин on 19.07.2022.
//

import UIKit

class BillConfigurator {
    static func config() -> UIViewController {
        let view = BillView()
        let presenter = BillPresenter()
        view.presenter = presenter
        presenter.view = view
        
        return view
    }
}
