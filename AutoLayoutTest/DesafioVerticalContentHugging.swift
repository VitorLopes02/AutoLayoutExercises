//
//  DesafioVerticalContentHugging.swift
//  AutoLayoutTest
//
//  Created by Vitor Lopes on 14/10/25.
//

import UIKit

class DesafioVerticalContentHugging: UIViewController {

    
    private lazy var cardView: UIView = {
        let view = UIView()
        view.backgroundColor = .systemBlue
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    
    private lazy var icon: UIView = {
        let view = UIView()
        view.backgroundColor = .red
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    
    private lazy var spacerView: UIView = {
        let view = UIView()
        view.backgroundColor = .systemYellow.withAlphaComponent(0.3)
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    
    private lazy var titleLabel: UILabel = {
        let label = UILabel()
        label.textColor = .white
        label.text = "Hello World!"
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
        
    private lazy var actionButton: UIButton = {
        let button = UIButton(type: .system)
        button.setTitle("Tap me!", for: .normal)
        button.backgroundColor = .systemGreen
        button.translatesAutoresizingMaskIntoConstraints = false
        return button
    }()
    
    private lazy var headerStack: UIStackView = {
        let stackView = UIStackView(arrangedSubviews: [titleLabel, icon])
        stackView.axis = .horizontal
        stackView.backgroundColor = .black
        stackView.translatesAutoresizingMaskIntoConstraints = false
        return stackView
    }()

    private lazy var verticalStack: UIStackView = {
        let stackView = UIStackView(arrangedSubviews: [headerStack, spacerView, actionButton])
        stackView.axis = .vertical
        stackView.distribution = .fill
        stackView.translatesAutoresizingMaskIntoConstraints = false
        return stackView
    }()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .systemYellow
        setupUI()
    }
    
    private func setupUI() {
        view.addSubview(cardView)
        cardView.addSubview(verticalStack)
    
        headerStack.setContentHuggingPriority(UILayoutPriority(rawValue: 1.0), for: .vertical)
        actionButton.setContentHuggingPriority(UILayoutPriority.required, for: .vertical)
        
        NSLayoutConstraint.activate([
            cardView.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            cardView.centerYAnchor.constraint(equalTo: view.centerYAnchor),
            cardView.widthAnchor.constraint(equalToConstant: 300),
            cardView.heightAnchor.constraint(equalToConstant: 200),
            
            verticalStack.topAnchor.constraint(equalTo: cardView.topAnchor),
            verticalStack.leadingAnchor.constraint(equalTo: cardView.leadingAnchor),
            verticalStack.trailingAnchor.constraint(equalTo: cardView.trailingAnchor),
            verticalStack.bottomAnchor.constraint(equalTo: cardView.bottomAnchor),
            
            
            actionButton.heightAnchor.constraint(equalToConstant: 50),

            
        ])
    }
    
    
    
    
}
