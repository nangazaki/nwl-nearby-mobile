//
//  WelcomeView.swift
//  Nearby
//
//  Created by Hélder Cambuta on 26/12/24.
//

import Foundation
import UIKit

class WelcomeView: UIView {
    private let logoImageView: UIImageView = {
        let image = UIImageView(image: UIImage(named: "welcomeLogo"))
        image.contentMode = .scaleAspectFit
        image.translatesAutoresizingMaskIntoConstraints = false
        
        return image
    }()
    
    private let welcomeLabel: UILabel = {
        let label = UILabel()
        label.text = "Boas vindas ao Nearby!"
        label.translatesAutoresizingMaskIntoConstraints = false
        
        return label
    }()
    
    private let descriptionLabel: UILabel = {
        let label = UILabel()
        label.text = "Tenha cupons de vantagem para usar em seus estabelecimentos favoritoss."
        label.translatesAutoresizingMaskIntoConstraints = false
        
        return label
    }()
    
    
    private let tipsLabel: UILabel = {
        let label = UILabel()
        label.text = "Teste"
        label.translatesAutoresizingMaskIntoConstraints = false
        
        return label
    }()
    
    private let tipsStackView: UIStackView = {
        let stackView = UIStackView()
        stackView.spacing = 16
        stackView.axis = .vertical
        stackView.translatesAutoresizingMaskIntoConstraints = false
        
        return stackView
    }()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        setupUI()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    private func setupUI() {
        setupTips()
        self.addSubview(logoImageView)
        self.addSubview(welcomeLabel)
        self.addSubview(descriptionLabel)
        self.addSubview(tipsLabel)
        self.addSubview(tipsStackView)
        self.addSubview(startButton)
        setupConstraints()
    }
    
    private func setupTips() {
        let tip1 = TipsView(
            icon: UIImage(named: "mapPin") ?? UIImage(),
            title: "Encontre estabelecimentos",
            description: "Veja locais perto de você que são parceiros Nearby"
        )
        
        let tip2 = TipsView(
            icon: UIImage(named: "qrcode") ?? UIImage(),
            title: "Ative o cupom com o QR Code",
            description: "Escaneie o código no estabelecimento para usar o benefício"
        )
        
        let tip3 = TipsView(
            icon: UIImage(named: "ticket") ?? UIImage(),
            title: "Garanta vantagens perto de você",
            description: "Ative cupons onde estiver, em diferentes tipos de estabelicimentos"
        )
        
        
        self.tipsStackView.addArrangedSubview(tip1)
        self.tipsStackView.addArrangedSubview(tip2)
        self.tipsStackView.addArrangedSubview(tip3)
    }
    
    private let startButton: UIButton = {
        let button = UIButton(type: .system)
        button.setTitle("Começar", for: .normal)
        button.backgroundColor = Colors.greenBase
        button.setTitleColor(Colors.gray800, for: .normal)
        button.layer.cornerRadius = 8
        button.translatesAutoresizingMaskIntoConstraints = false
        
        return button
    }()
    
    private func setupConstraints() {
        NSLayoutConstraint.activate([
            logoImageView.topAnchor.constraint(equalTo: topAnchor, constant: 4),
            logoImageView.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 4),
            logoImageView.widthAnchor.constraint(equalToConstant: 48),
            logoImageView.heightAnchor.constraint(equalToConstant: 48),
            
            welcomeLabel.topAnchor.constraint(equalTo: logoImageView.bottomAnchor, constant: 8),
            welcomeLabel.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 4),
            
            descriptionLabel.topAnchor.constraint(equalTo: welcomeLabel.bottomAnchor, constant: 4),
            descriptionLabel.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 8),
            
            tipsLabel.topAnchor.constraint(equalTo: descriptionLabel.bottomAnchor, constant: 16),
            tipsLabel.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 8),
            tipsLabel.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -8),
            
            tipsStackView.topAnchor.constraint(equalTo: tipsLabel.bottomAnchor, constant: 8),
            tipsStackView.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 8),
            tipsStackView.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -8),
            
            startButton.bottomAnchor.constraint(equalTo: bottomAnchor, constant: 8),
            startButton.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 8),
            startButton.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -8)
        ])
    }
    
    
}


