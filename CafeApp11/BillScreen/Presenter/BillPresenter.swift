//
//  BillPresenter.swift
//  CafeApp11
//
//  Created by Валентин Коскин on 08.07.2022.
//

import UIKit

protocol BillPresenterProtocol {
    func a()
}

class BillPresenter: BillPresenterProtocol {
    var view: BillView?
    
    func a() {
        print("a")
    }
}
