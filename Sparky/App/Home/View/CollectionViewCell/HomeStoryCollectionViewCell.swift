//
//  HomeStoryCollectionViewCell.swift
//  Sparky
//
//  Created by Marcos Kilmer Pereira de Aquino on 14/12/21.
//

import UIKit

class HomeStoryCollectionViewCell: UICollectionViewCell {
    static let identifier = "HomeStoryCollectionViewCellIdentifier"
    
    private var roundImage = RoundImageView(named: "flow")
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        buildViewHierarchy()
        setupConstraints()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    private func buildViewHierarchy() {
        addSubview(roundImage)
        roundImage.makeRounded(height: self.frame.height / 2)
    }
    
    private func setupConstraints() {
        NSLayoutConstraint.activate([
            roundImage.centerXAnchor.constraint(equalTo: self.centerXAnchor),
            roundImage.centerYAnchor.constraint(equalTo: self.centerYAnchor)
        ])
    }
}
