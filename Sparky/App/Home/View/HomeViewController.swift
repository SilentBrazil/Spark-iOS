//
//  HomeViewController.swift
//  Sparky
//
//  Created by Marcos Kilmer Pereira de Aquino on 14/12/21.
//

import UIKit
import Lottie

class HomeViewController: BaseViewController {
    
    private var storyCollectionView = HomeStoryCollectionView()
    private var homeVideoCollectionView = HomeVideoCollectionView()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        buildViewHierarchy()
        setupConstraints()
    }
    
    private func buildViewHierarchy() {
        view.addSubview(storyCollectionView)
        view.addSubview(homeVideoCollectionView)
        
    }
    
    private func setupConstraints() {
        NSLayoutConstraint.activate([
            storyCollectionView.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 20),
            storyCollectionView.widthAnchor.constraint(equalTo: view.widthAnchor),
            storyCollectionView.heightAnchor.constraint(equalToConstant: 100),
            storyCollectionView.trailingAnchor.constraint(equalTo: view.trailingAnchor),
            storyCollectionView.leadingAnchor.constraint(equalTo: view.leadingAnchor)
        ])
        
        NSLayoutConstraint.activate([
            homeVideoCollectionView.topAnchor.constraint(equalTo: storyCollectionView.bottomAnchor, constant: 20),
            homeVideoCollectionView.widthAnchor.constraint(equalTo: view.widthAnchor),
            homeVideoCollectionView.heightAnchor.constraint(equalTo: view.heightAnchor),
            homeVideoCollectionView.trailingAnchor.constraint(equalTo: view.trailingAnchor),
            homeVideoCollectionView.leadingAnchor.constraint(equalTo: view.leadingAnchor)
        ])
    }
}


