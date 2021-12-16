//
//  HomeVideoCollectionView.swift
//  Sparky
//
//  Created by Marcos Kilmer Pereira de Aquino on 15/12/21.
//

import UIKit

class HomeVideoCollectionView: UICollectionView {
    
    private var homeVideoDelegate = HomeVideoCollectionDelegate()
    private var homeVideoDataSource = HomeVideoCollectionDataSource()
    
    init() {
        let layout = UICollectionViewFlowLayout()
        layout.scrollDirection = .vertical
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

        self.delegate = homeVideoDelegate
        self.dataSource = homeVideoDataSource
        self.register(HomeVideoCollectionViewCell.self, forCellWithReuseIdentifier: HomeVideoCollectionViewCell.identifier)
        
        self.translatesAutoresizingMaskIntoConstraints = false
    }
}

