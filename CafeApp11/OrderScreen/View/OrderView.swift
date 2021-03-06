//
//  OrderView.swift
//  CafeApp11
//
//  Created by Валентин Коскин on 07.07.2022.
//

import UIKit

class OrderView: UIViewController {
    
    var presenter: OrderPresenterProtocol?
    
    let nameLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.text = "ФИО"
        label.textColor = .systemPink
        return label
    }()
    
    let nameTextField: UITextField = {
        let textField = UITextField()
        textField.translatesAutoresizingMaskIntoConstraints = false
        textField.placeholder = "Введите ФИО"
        textField.layer.borderWidth = 0.25
        return textField
    }()
    
    let amountGuestsLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.text = "Количество гостей"
        label.textColor = .systemPink
        return label
    }()
    
    let amountGuestsTextField: UITextField = {
        let textField = UITextField()
        textField.translatesAutoresizingMaskIntoConstraints = false
        textField.placeholder = "Введите количество"
        textField.layer.borderWidth = 0.25
        return textField
    }()
    
    let numberTableLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.text = "Номер стола"
        label.textColor = .systemPink
        return label
    }()
    
    let numberTableTextField: UITextField = {
        let textField = UITextField()
        textField.translatesAutoresizingMaskIntoConstraints = false
        textField.placeholder = "Номер стола"
        textField.layer.borderWidth = 0.25
        return textField
    }()
    
    let bookedTableLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.text = "Бронировали стол?"
        label.textColor = .systemPink
        return label
    }()
    
    let bookedTableSwitch: UISwitch = {
        let switchBook = UISwitch()
        switchBook.translatesAutoresizingMaskIntoConstraints = false
        switchBook.isOn = true
        return switchBook
    }()
    
    let payMoneyLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.text = "Предоплата?"
        label.textColor = .systemPink
        return label
    }()

    let payMoneySwitch: UISwitch = {
        let switchMoney = UISwitch()
        switchMoney.translatesAutoresizingMaskIntoConstraints = false
        switchMoney.isOn = false
        return switchMoney
    }()
    
    let vipRoomLabel: UILabel = {
        var label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.text = "VIP комната?"
        label.textColor = .systemPink
        return label
    }()
    
    let vipRoomSwitch: UISwitch = {
        let switchRoom = UISwitch()
        switchRoom.translatesAutoresizingMaskIntoConstraints = false
        switchRoom.isOn = false
        return switchRoom
    }()
    
    let getBillButton: UIButton = {
        let button = UIButton()
        button.translatesAutoresizingMaskIntoConstraints = false
        button.setTitle("Выставить счет", for: .normal)
        button.backgroundColor = UIColor.systemPink
        button.setTitleColor(.white, for: .normal)
        button.addTarget(self, action: #selector(getBillButtonTouch), for: .touchUpInside)
        return button
    }()
    
    let information: UIStackView = {
        let view = UIStackView()
        view.translatesAutoresizingMaskIntoConstraints = false
        view.axis = .vertical
        view.alignment = .leading
        return view
    }()
    
    let moreInformation1: UIStackView = {
        let view = UIStackView()
        view.translatesAutoresizingMaskIntoConstraints = false
        view.axis = .horizontal
        view.alignment = .leading
        return view
    }()
    
    let moreInformation2: UIStackView = {
        let view = UIStackView()
        view.translatesAutoresizingMaskIntoConstraints = false
        view.axis = .horizontal
        view.alignment = .leading
        return view
    }()
    
    let moreInformation3: UIStackView = {
        let view = UIStackView()
        view.translatesAutoresizingMaskIntoConstraints = false
        view.axis = .horizontal
        view.alignment = .leading
        return view
    }()
    
    var getName: String? {
        return nameTextField.text
    }
    var getAmountGuests: Int? {
        guard let guests = Int("\(amountGuestsTextField.text!)") else {
            return nil
        }
        return guests
        //return Int("\(amountGuestsTextField.text)")
    }
    var getNumberTable: Int? {
        guard let tables = Int("\(numberTableTextField.text!)") else {
            return nil
        }
        return tables
        //return Int("\(numberTableTextField.text)")
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        configUI()
        setConstrains()
    }
    
    func configUI() {
        view.backgroundColor = UIColor.white
        
        information.addArrangedSubview(nameLabel)
        information.addArrangedSubview(nameTextField)
        information.addArrangedSubview(amountGuestsLabel)
        information.addArrangedSubview(amountGuestsTextField)
        information.addArrangedSubview(numberTableLabel)
        information.addArrangedSubview(numberTableTextField)
        
        moreInformation1.addSubview(bookedTableLabel)
        moreInformation1.addSubview(bookedTableSwitch)
        moreInformation2.addSubview(payMoneyLabel)
        moreInformation2.addSubview(payMoneySwitch)
        moreInformation3.addSubview(vipRoomLabel)
        moreInformation3.addSubview(vipRoomSwitch)
        
        view.addSubview(information)
        view.addSubview(moreInformation1)
        view.addSubview(moreInformation2)
        view.addSubview(moreInformation3)
        view.addSubview(getBillButton)
    }
    
    func setConstrains() {
        information.topAnchor.constraint(equalTo: view.topAnchor, constant: 140).isActive = true
        information.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 59).isActive = true
        information.rightAnchor.constraint(equalTo: view.rightAnchor, constant: 59).isActive = true
        
        moreInformation1.topAnchor.constraint(equalTo: information.bottomAnchor, constant: 104.5).isActive = true
        moreInformation1.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 59).isActive = true
        
        moreInformation2.topAnchor.constraint(equalTo: moreInformation1.bottomAnchor, constant: 50).isActive = true
        moreInformation2.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 59).isActive = true

        moreInformation3.topAnchor.constraint(equalTo: moreInformation2.bottomAnchor, constant: 50).isActive = true
        moreInformation3.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 59).isActive = true

        getBillButton.topAnchor.constraint(equalTo: moreInformation3.bottomAnchor, constant: 92).isActive = true
        getBillButton.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        getBillButton.widthAnchor.constraint(equalToConstant: 297).isActive = true

        bookedTableSwitch.leadingAnchor.constraint(equalTo: moreInformation1.leadingAnchor, constant: 240).isActive = true
        payMoneySwitch.leadingAnchor.constraint(equalTo: moreInformation2.leadingAnchor, constant: 240).isActive = true
        vipRoomSwitch.leadingAnchor.constraint(equalTo: moreInformation3.leadingAnchor, constant: 240).isActive = true

    }
    
    @objc func getBillButtonTouch() {
        guard let name = getName,
              let amount = getAmountGuests,
              let table = getNumberTable else {
            showAlert(message: "Вы ввели не все данные!")
            return
        }
        presenter?.tapGetBillButton(name: name, amount: amount, table: table)
    }
    
    func showAlert(message: String) {
        let alertController = UIAlertController(title: nil, message: message, preferredStyle: .alert)
        let action = UIAlertAction(title: "Хорошо", style: .default, handler: nil)
        alertController.addAction(action)
        self.present(alertController, animated: true, completion: nil)
    }

}
