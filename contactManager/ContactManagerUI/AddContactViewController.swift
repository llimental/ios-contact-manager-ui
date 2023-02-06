//
//  AddContactViewController.swift
//  ContactManagerUI
//
//  Created by 이상윤 on 2023/02/06.
//

import UIKit

class AddContactViewController: UIViewController {
    
    var newContactNavigationBar: UINavigationBar = {
        let navigationBar = UINavigationBar()
        let navigationItem = UINavigationItem(title: "새 연락처")
        let cancelItem = UIBarButtonItem(barButtonSystemItem: .cancel, target: nil, action: nil)
        let saveItem = UIBarButtonItem(barButtonSystemItem: .save, target: nil, action: nil)
        navigationItem.leftBarButtonItem = cancelItem
        navigationItem.rightBarButtonItem = saveItem
        navigationBar.setItems([navigationItem], animated: false)
        return navigationBar
    }()
    
    var nameLabel: UILabel = {
        let label = UILabel()
        label.text = "이름"
        return label
    }()
    
    var ageLabel: UILabel = {
        let label = UILabel()
        label.text = "나이"
        return label
    }()
    
    var phoneNumberLabel: UILabel = {
        let label = UILabel()
        label.text = "연락처"
        return label
    }()
    
    var nameTextField: UITextField = {
        let textField = UITextField()
        return textField
    }()
    
    var ageTextField: UITextField = {
        let textField = UITextField()
        return textField
    }()
    
    var phoneNumberTextField: UITextField = {
        let textField = UITextField()
        return textField
    }()
    
    var nameStackView: UIStackView = {
        let stackView = UIStackView()
        stackView.alignment = .fill
        stackView.distribution = .fill
        stackView.spacing = 8
        stackView.axis = .horizontal
        return stackView
    }()
    
    var ageStackView: UIStackView = {
        let stackView = UIStackView()
        stackView.alignment = .fill
        stackView.distribution = .fill
        stackView.spacing = 8
        stackView.axis = .horizontal
        return stackView
    }()
    
    var phoneNumberStackView: UIStackView = {
        let stackView = UIStackView()
        stackView.alignment = .fill
        stackView.distribution = .fill
        stackView.spacing = 8
        stackView.axis = .horizontal
        return stackView
    }()
    
    var contactInfoStackView: UIStackView = {
        let stackView = UIStackView()
        stackView.alignment = .fill
        stackView.distribution = .fill
        stackView.spacing = 20
        stackView.axis = .vertical
        return stackView
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white
        addSubview()
        configureLayout()
    }
    
    private func addSubview() {
        view.addSubview(newContactNavigationBar)
        view.addSubview(contactInfoStackView)
        contactInfoStackView.addArrangedSubview(nameStackView)
        contactInfoStackView.addArrangedSubview(ageStackView)
        contactInfoStackView.addArrangedSubview(phoneNumberStackView)
        
        nameStackView.addArrangedSubview(nameLabel)
        nameStackView.addArrangedSubview(nameTextField)
        
        ageStackView.addArrangedSubview(ageLabel)
        ageStackView.addArrangedSubview(ageTextField)
        
        phoneNumberStackView.addArrangedSubview(phoneNumberLabel)
        phoneNumberStackView.addArrangedSubview(phoneNumberTextField)
    }
    
    private func configureLayout() {
        let safeArea = view.safeAreaLayoutGuide
        
        newContactNavigationBar.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            newContactNavigationBar.leadingAnchor.constraint(equalTo: safeArea.leadingAnchor),
            newContactNavigationBar.trailingAnchor.constraint(equalTo: safeArea.trailingAnchor),
            newContactNavigationBar.topAnchor.constraint(equalTo: safeArea.topAnchor),
            newContactNavigationBar.widthAnchor.constraint(equalTo: view.widthAnchor),
        ])
        
        contactInfoStackView.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            contactInfoStackView.topAnchor.constraint(equalTo: newContactNavigationBar.bottomAnchor, constant: 20),
            contactInfoStackView.leadingAnchor.constraint(equalTo:safeArea.leadingAnchor, constant: 20),
            contactInfoStackView.trailingAnchor.constraint(equalTo: safeArea.trailingAnchor, constant: 20),
        ])
    }
}
