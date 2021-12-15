//
//  HomeLatestVideosCollectionView.swift
//  Sparky
//
//  Created by Marcos Kilmer Pereira de Aquino on 15/12/21.
//

import UIKit

class HomeLatestVideosCollectionView: UICollectionView {
    private var homeLatetsVideosDelegate = HomeLatetsVideosCollectionDelegate()
    private var homeLatetsVideoDataSource = HomeLatetsVideosCollectionDataSource()
    
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
        translatesAutoresizingMaskIntoConstraints = false
        self.isPagingEnabled = true
        self.isScrollEnabled = true
        self.showsVerticalScrollIndicator = false

        self.delegate = homeLatetsVideosDelegate
        self.dataSource = homeLatetsVideoDataSource
        self.register(HomeLatestVideosCollectionViewCell.self, forCellWithReuseIdentifier: HomeLatestVideosCollectionViewCell.identifier)
        
        self.translatesAutoresizingMaskIntoConstraints = false
    }
}
