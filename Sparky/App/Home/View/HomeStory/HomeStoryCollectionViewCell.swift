//
//  HomeStoryCollectionViewCell.swift
//  Sparky
//
//  Created by Marcos Kilmer Pereira de Aquino on 14/12/21.
//

import UIKit

class HomeStoryCollectionViewCell: UICollectionViewCell {
    static let identifier = "HomeStoryCollectionViewCellIdentifier"
    
    private var storyImage = RoundImageView(named: "flow")
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        buildViewHierarchy()
        setupConstraints()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    private func buildViewHierarchy() {
        translatesAutoresizingMaskIntoConstraints = false
        contentView.addSubview(storyImage)
    }
    
    private func setupConstraints() {
        NSLayoutConstraint.activate([
            storyImage.topAnchor.constraint(equalTo: contentView.topAnchor, constant: 0),
            storyImage.leadingAnchor.constraint(equalTo: contentView.leadingAnchor, constant: 20)
        ])
    }
}
