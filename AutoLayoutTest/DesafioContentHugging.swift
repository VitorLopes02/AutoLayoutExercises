//
//  DesafioContentHugging.swift
//  AutoLayoutTest
//
//  Created by Vitor Lopes on 14/10/25.
//

import UIKit

class DesafioContentHugging: UIViewController {
    
    private func makeLabel(text: String) -> UILabel {
        let label = UILabel()
        label.text = text
        label.textAlignment = .center
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }

    private lazy var labelEsquerda: UILabel = makeLabel(text: "Valor Total:")
    private lazy var labelDireita: UILabel = makeLabel(text: "R$ 500.000,00")
    
    private lazy var infoStack: UIStackView = {
        let stackView = UIStackView(arrangedSubviews: [labelEsquerda, labelDireita])
        stackView.axis = .horizontal
        stackView.backgroundColor = .yellow
        stackView.translatesAutoresizingMaskIntoConstraints = false
        return stackView
    }()


    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .systemIndigo
        setupUI()
    }
    
    
    private func setupUI() {
        labelDireita.textColor = .systemRed
        labelEsquerda.setContentHuggingPriority(UILayoutPriority.required, for: .horizontal)
        labelDireita.setContentHuggingPriority(UILayoutPriority.defaultLow, for: .horizontal)
        
        labelEsquerda.setContentCompressionResistancePriority(UILayoutPriority.required, for: .horizontal)
        labelDireita.setContentCompressionResistancePriority(UILayoutPriority.defaultLow, for: .horizontal)
        
        view.addSubview(infoStack)


        
        NSLayoutConstraint.activate([
            infoStack.topAnchor.constraint(equalTo: view.topAnchor, constant: 120),
            infoStack.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 20),
            infoStack.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -20),
        ])
        
        
    }
}
