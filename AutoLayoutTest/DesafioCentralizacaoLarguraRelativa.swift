//
//  DesafioCentralizacaoLarguraRelativa.swift
//  AutoLayoutTest
//
//  Created by Vitor Lopes on 07/10/25.
//

import UIKit

//🎯 Desafio 5: Centralização e Largura Relativa (Novo)
//Desta vez, o objetivo é centralizar o logo horizontalmente, mas garantir que ele não fique "colado" demais nas laterais, mesmo que a tela seja muito pequena.
//
//O Objetivo
//Crie um ContainerView (altura 200pt). Dentro dele, posicione o LogoView (altura 30pt, sem ícone desta vez):
//
//O LogoView deve estar centralizado horizontalmente no ContainerView (Posição X).
//
//O LogoView deve ter uma largura fixa de 120pt (Tamanho).
//
//A Regra Crítica: O LogoView NÃO PODE estar a menos de 20pt de qualquer borda lateral do ContainerView.

class DesafioCentralizacaoLarguraRelativa: UIViewController {
    
    private lazy var containerView: UIView = {
        let view = UIView()
        view.backgroundColor = .systemBlue
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    
    private lazy var logoView: UIView = {
        let view = UIView()
        view.backgroundColor = .systemRed
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    
    

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .systemGray
        setupLayout()
    }
    
    private func setupLayout() {
        view.addSubview(containerView)
        view.addSubview(logoView)
        
        NSLayoutConstraint.activate([
            containerView.topAnchor.constraint(equalTo: view.topAnchor),
            containerView.heightAnchor.constraint(equalToConstant: 200),
            containerView.leadingAnchor.constraint(equalTo: view.leadingAnchor),
            containerView.trailingAnchor.constraint(equalTo: view.trailingAnchor),
            
            logoView.heightAnchor.constraint(equalToConstant: 30),
            logoView.centerXAnchor.constraint(equalTo: containerView.centerXAnchor),
            logoView.widthAnchor.constraint(equalToConstant: 120),
            
            logoView.leadingAnchor.constraint(greaterThanOrEqualTo: containerView.leadingAnchor, constant: 20),
            logoView.trailingAnchor.constraint(lessThanOrEqualTo: containerView.trailingAnchor, constant: -20),
            logoView.centerYAnchor.constraint(equalTo: containerView.centerYAnchor)
            ])
    }
  
              



}
