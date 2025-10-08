//
//  ViewController.swift
//  AutoLayoutTest
//
//  Created by Vitor Lopes on 07/10/25.
//

import UIKit

class DesafioViewController: UIViewController {
    
    private lazy var containerView: UIView = {
        let view = UIView()
        view.backgroundColor = .systemYellow
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    
    private lazy var logoView: UIView = {
        let view = UIView()
        view.backgroundColor = .systemGray
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    
    private lazy var iconView: UIView = {
        let view = UIView()
        view.backgroundColor = .systemGreen
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .systemRed
        setupLayout()
        
    }
    
    private func setupLayout() {
        view.addSubview(containerView)
        view.addSubview(logoView)
        view.addSubview(iconView)
        
        
        NSLayoutConstraint.activate([
            containerView.topAnchor.constraint(equalTo: view.topAnchor),
            containerView.heightAnchor.constraint(equalToConstant: 200),
            containerView.leadingAnchor.constraint(equalTo: view.leadingAnchor),
            containerView.trailingAnchor.constraint(equalTo: view.trailingAnchor),
            
            logoView.centerYAnchor.constraint(equalTo: containerView.centerYAnchor),
            logoView.heightAnchor.constraint(equalToConstant: 30),
            iconView.centerYAnchor.constraint(equalTo: containerView.centerYAnchor),
            iconView.heightAnchor.constraint(equalToConstant: 44),
            
            logoView.leadingAnchor.constraint(equalTo: containerView.leadingAnchor, constant: 20),
            logoView.widthAnchor.constraint(equalToConstant: 120),
            iconView.trailingAnchor.constraint(equalTo: containerView.trailingAnchor, constant: -20),
            iconView.widthAnchor.constraint(equalToConstant: 44),
            
            // O código abaixo é um erro calculado haha (para eu fazer testes)
            // logoView.trailingAnchor.constraint(equalTo: iconView.leadingAnchor, constant: -10)
            
        ])
        
    }
    
    
}

