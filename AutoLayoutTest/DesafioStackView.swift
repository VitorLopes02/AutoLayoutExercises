//
//  DesafioStackView.swift
//  AutoLayoutTest
//
//  Created by Vitor Lopes on 13/10/25.
//

import UIKit

class DesafioStackView: UIViewController {
    
    private lazy var viewA: UILabel = {
        let label = UILabel()
        label.text = "Título do Formulário"
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    private lazy var viewB: UIView = {
        let view = UIView()
        view.backgroundColor = .systemRed.withAlphaComponent(0.5)
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    
    private lazy var viewC: UIButton = {
        let button = UIButton(type: .system)
        button.setTitle("Enviar", for: .normal)
        button.backgroundColor = .systemBlue
        button.translatesAutoresizingMaskIntoConstraints = false
        return button
    }()
    
    private lazy var formStack: UIStackView = {
        let stack = UIStackView(arrangedSubviews: [viewA, viewB, viewC])
        stack.axis = .vertical
        stack.spacing = 16
        stack.distribution = .fill
        stack.backgroundColor = .yellow
        stack.translatesAutoresizingMaskIntoConstraints = false
        return stack
    }()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white
        setupUI()
    }
    
    
    private func setupUI() {
        view.addSubview(formStack)
        
        NSLayoutConstraint.activate([
            formStack.topAnchor.constraint(equalTo: view.topAnchor, constant: 20),
            formStack.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 20),
            formStack.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -20),
            
            viewB.heightAnchor.constraint(equalToConstant: 44),
            viewC.heightAnchor.constraint(equalToConstant: 50)
            
        ])
    }
    
}
