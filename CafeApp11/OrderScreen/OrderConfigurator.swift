//
//  OrderConfigurator.swift
//  CafeApp11
//
//  Created by Валентин Коскин on 18.07.2022.
//

import UIKit

class OrderConfigurator {
    static func config() -> UIViewController {
        let view = OrderView()
        let presenter = OrderPresenter()
        view.presenter = presenter
        presenter.view = view
        return view
    }
}
