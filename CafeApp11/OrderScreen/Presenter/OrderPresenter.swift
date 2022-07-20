//
//  OrderPresenter.swift
//  CafeApp11
//
//  Created by Валентин Коскин on 08.07.2022.
//

import UIKit

protocol OrderPresenterProtocol {
 //dodelat functions
    func tapGetBillButton(name: String, amount: Int, table: Int)
}

final class OrderPresenter: OrderPresenterProtocol {
    var view: OrderView?
    
    func tapGetBillButton(name: String, amount: Int, table: Int) {
        if name.count < 5 {
            view?.showAlert(message: "Слишком короткое имя")
            return
        }
        if amount < 1 || amount > 10 {
            view?.showAlert(message: "Введено некорректное количество гостей")
            return
        }
        if table < 0 || table > 20 {
            view?.showAlert(message: "У нас нет такого стола!")
            return
        }
        
        showNextVC()
        //далее переход функцию вызывать??
    }
    func showNextVC() {
        let vc = BillConfigurator.config()
        view?.present(vc, animated: true, completion: nil)
    }
}
