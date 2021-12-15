//
//  HomeStoryCollectionView.swift
//  Sparky
//
//  Created by Marcos Kilmer Pereira de Aquino on 15/12/21.
//

import UIKit

class HomeStoryCollectionView: UICollectionView {
    
    private var storyCollectionDelegate = HomeStoryCollectionDelegate()
    private var storyCollectionDataSource = HomeStoryCollectionDataSource()
    
    init() {
        let layout = UICollectionViewFlowLayout()
        layout.sectionInset = UIEdgeInsets(top: 0, left: 0, bottom: 0, right: 20)
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

        self.delegate = storyCollectionDelegate
        self.dataSource = storyCollectionDataSource
        self.register(HomeStoryCollectionViewCell.self, forCellWithReuseIdentifier: HomeStoryCollectionViewCell.identifier)
        
        self.translatesAutoresizingMaskIntoConstraints = false
    }
}
