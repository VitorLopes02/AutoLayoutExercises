//
//  DesafioPreenchimentoMargem.swift
//  AutoLayoutTest
//
//  Created by Vitor Lopes on 07/10/25.
//


//O Objetivo: Crie um ContentView que preencha o máximo de espaço possível dentro do ContainerView, respeitando uma margem de 40pt em todos os quatro lados (cima, baixo, esquerda, direita).
//
//O Roteiro (Sua Tarefa)
//Crie as Views: Use seu ContainerView (altura 300pt) e uma ContentView (azul).
//
//Eixo Y (Vertical): Use topAnchor e bottomAnchor para ancorar a ContentView ao container. Como você aplica a margem de 40pt nessas duas âncoras?
//
//Eixo X (Horizontal): Use leadingAnchor e trailingAnchor para ancorar a ContentView ao container. Como você aplica a margem de 40pt (lembre-se do sinal negativo no trailing)?

import UIKit

class DesafioPreenchimentoMargem: UIViewController {
    
    private lazy var containerView: UIView = {
        let view = UIView()
        view.backgroundColor = .systemYellow
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    
    private lazy var contentView: UIView = {
        let view = UIView()
        view.backgroundColor = .systemBlue
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .systemGray
        setupUI()
    }
    
    private func setupUI() {
        view.addSubview(containerView)
        view.addSubview(contentView)
        
        NSLayoutConstraint.activate([
            containerView.bottomAnchor.constraint(equalTo: view.bottomAnchor),
            containerView.heightAnchor.constraint(equalToConstant: 300),
            containerView.leadingAnchor.constraint(equalTo: view.leadingAnchor),
            containerView.trailingAnchor.constraint(equalTo: view.trailingAnchor),
            
            contentView.bottomAnchor.constraint(equalTo: containerView.bottomAnchor, constant: -40),
            contentView.topAnchor.constraint(equalTo: containerView.topAnchor, constant: 40),
            contentView.leadingAnchor.constraint(equalTo: containerView.leadingAnchor, constant: 40),
            contentView.trailingAnchor.constraint(equalTo: containerView.trailingAnchor, constant: -40)

            
        ])
    }
    
    
    
    
}
