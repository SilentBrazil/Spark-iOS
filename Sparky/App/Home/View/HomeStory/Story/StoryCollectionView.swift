//
//  StoryCollectionView.swift
//  Sparky
//
//  Created by Marcos Kilmer Pereira de Aquino on 16/12/21.
//

import UIKit

class StoryCollectionView: UICollectionView {
    private var storyCollectionDelegate = StoryCollectionDelegate()
    private var storyCollectionDataSource = StoryCollectionDataSource()
    
    init() {
        let layout = UICollectionViewFlowLayout()
        layout.scrollDirection = .horizontal
        super.init(frame: .zero, collectionViewLayout: layout)
        configureCollection()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    private func configureCollection() {
        self.isPagingEnabled = true
        self.isScrollEnabled = true
        self.showsVerticalScrollIndicator = false
        self.showsHorizontalScrollIndicator = false
        translatesAutoresizingMaskIntoConstraints = false
        delegate = storyCollectionDelegate
        dataSource = storyCollectionDataSource
        self.register(StoryCollectionViewCell.self, forCellWithReuseIdentifier: StoryCollectionViewCell.identifier)
    }
}
