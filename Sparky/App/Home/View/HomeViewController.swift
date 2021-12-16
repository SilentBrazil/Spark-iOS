//
//  HomeViewController.swift
//  Sparky
//
//  Created by Marcos Kilmer Pereira de Aquino on 14/12/21.
//

import UIKit
import Lottie

class HomeViewController: BaseListViewController {
    
    private var homeViewDelegate = HomeViewDelegate()
    private var homeViewDataSource = HomeViewDataSource()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        configureCollectionViews()
    }
    
    private func buildViewHierarchy() {
        
        
    }
    
    private func setupConstraints() {
     
    }
    
    private func configureCollectionViews() {
        collectionView.delegate = homeViewDelegate
        collectionView.dataSource = homeViewDataSource
        collectionView.register(HomeStoryCollectionViewCell.self, forCellWithReuseIdentifier: HomeStoryCollectionViewCell.identifier)
        collectionView.register(HomeVideoCollectionViewCell.self, forCellWithReuseIdentifier: HomeVideoCollectionViewCell.identifier)
    }
    
}

