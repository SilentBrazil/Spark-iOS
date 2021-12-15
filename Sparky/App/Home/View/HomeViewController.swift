//
//  HomeViewController.swift
//  Sparky
//
//  Created by Marcos Kilmer Pereira de Aquino on 14/12/21.
//

import UIKit
import Lottie

class HomeViewController: BaseViewController {
    
    private var storyCollectionDelegate = HomeStoryCollectionDelegate()
    private var storyCollectionDataSource = HomeStoryCollectionDataSource()
    
    private lazy var storyCollectionView: UICollectionView = { [weak self] in
        let layout = UICollectionViewFlowLayout()
        layout.sectionInset = UIEdgeInsets(top: 0, left: 0, bottom: 0, right: 20)
        layout.scrollDirection = .horizontal
        
        let collectionView = UICollectionView(frame: .zero, collectionViewLayout: layout)
        
        collectionView.isPagingEnabled = true
        collectionView.isScrollEnabled = true
    
        collectionView.delegate = self?.storyCollectionDelegate
        collectionView.dataSource = self?.storyCollectionDataSource
        collectionView.register(HomeStoryCollectionViewCell.self, forCellWithReuseIdentifier: HomeStoryCollectionViewCell.identifier)
        collectionView.translatesAutoresizingMaskIntoConstraints = false
        return collectionView
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        buildViewHierarchy()
        setupConstraints()
    }
    
    private func buildViewHierarchy() {
        view.addSubview(storyCollectionView)
    }
    
    private func setupConstraints() {
        NSLayoutConstraint.activate([
            storyCollectionView.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 20),
            storyCollectionView.widthAnchor.constraint(equalTo: view.widthAnchor),
            storyCollectionView.heightAnchor.constraint(equalToConstant: 100),
            storyCollectionView.trailingAnchor.constraint(equalTo: view.trailingAnchor)
        ])
    }
    
}


