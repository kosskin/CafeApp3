//
//  BillView.swift
//  CafeApp11
//
//  Created by Валентин Коскин on 08.07.2022.
//

import UIKit

class BillView: UIViewController {

    var firstFoodTextField = UITextField()
    var secondFoodTextField = UITextField()
    var resultButton = UIButton()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.view.backgroundColor = .white
        //firstFoodTextField
        firstFoodTextField.text = "Салат цезарь                                      400"
        firstFoodTextField.frame = CGRect(x: 40, y: 147, width: 335, height: 35)
        firstFoodTextField.borderStyle = .none
        firstFoodTextField.layer.borderWidth = 0.25
        self.view.addSubview(firstFoodTextField)
        
        //secondFoodTextField
        secondFoodTextField.text = "Салат греческий                               200"
        secondFoodTextField.frame = CGRect(x: 40, y: 234, width: 335, height: 35)
        //secondFoodTextField.layer.borderWidth = 0.25
        self.view.addSubview(secondFoodTextField)
        
        //resultButon
        resultButton.setTitle("Итого: 600 рублей", for: .normal)
        resultButton.backgroundColor = UIColor.systemPink
        resultButton.setTitleColor(.white, for: .normal)
        resultButton.frame = CGRect(x: 188, y: 532, width: 187, height: 69)
        self.view.addSubview(resultButton)
    }

}
