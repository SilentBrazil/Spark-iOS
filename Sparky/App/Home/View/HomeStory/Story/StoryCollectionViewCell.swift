//
//  StoryCollectionViewCell.swift
//  Sparky
//
//  Created by Marcos Kilmer Pereira de Aquino on 16/12/21.
//

import UIKit

class StoryCollectionViewCell: UICollectionViewCell {
    public static let identifier = "StoryCollectionViewCellIdentifier"
    
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
        self.addSubview(storyImage)
    }
    
    private func setupConstraints() {
        NSLayoutConstraint.activate([
            storyImage.centerXAnchor.constraint(equalTo: self.centerXAnchor),
            storyImage.centerYAnchor.constraint(equalTo: self.centerYAnchor),
            storyImage.topAnchor.constraint(equalTo: self.topAnchor, constant: 0),
            storyImage.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: 20)
        ])
    }
}
