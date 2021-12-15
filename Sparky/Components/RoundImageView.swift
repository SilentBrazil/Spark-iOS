//
//  RoundImageView.swift
//  Sparky
//
//  Created by Marcos Kilmer Pereira de Aquino on 14/12/21.
//

import UIKit

class RoundImageView: UIView {
    private let height: CGFloat = 60
    private lazy var imageView: UIImageView = {
        let imageView = UIImageView()
        imageView.contentMode = .scaleAspectFit
        imageView.translatesAutoresizingMaskIntoConstraints = false
        return imageView
    }()
    
    init(named: String) {
        super.init(frame: .zero)
         configure(named: named)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    private func configure(named: String) {
        translatesAutoresizingMaskIntoConstraints = false
        imageView.image = UIImage(named: named)
        self.addSubview(imageView)

        NSLayoutConstraint.activate([
            imageView.leadingAnchor.constraint(equalTo: self.leadingAnchor),
            imageView.widthAnchor.constraint(equalToConstant: height),
            imageView.heightAnchor.constraint(equalToConstant: height)
        ])
        
        makeRounded()
    }
    
    private func makeRounded() {
        imageView.layer.borderWidth = 1.4
        imageView.layer.borderColor = UIColor.white.cgColor
        imageView.layer.masksToBounds = false
        imageView.layer.cornerRadius = height / 2
        imageView.clipsToBounds = true
    }
}
