//
//  HomeStoryCollectionViewCell.swift
//  Sparky
//
//  Created by Marcos Kilmer Pereira de Aquino on 14/12/21.
//

import UIKit

class HomeStoryCollectionViewCell: UICollectionViewCell {
    static let identifier = "HomeStoryCollectionViewCellIdentifier"
    private let storyCollectionview = StoryCollectionView()
    
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
        addSubview(storyCollectionview)
    }
    
    private func setupConstraints() {
        NSLayoutConstraint.activate([
            storyCollectionview.centerXAnchor.constraint(equalTo: self.centerXAnchor),
            storyCollectionview.centerYAnchor.constraint(equalTo: self.centerYAnchor),
            storyCollectionview.widthAnchor.constraint(equalToConstant: 10),
            storyCollectionview.heightAnchor.constraint(equalToConstant: 100),
            storyCollectionview.leadingAnchor.constraint(equalTo: self.leadingAnchor)
        ])
    }
}
