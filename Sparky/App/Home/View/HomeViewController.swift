//
//  HomeViewController.swift
//  Sparky
//
//  Created by Marcos Kilmer Pereira de Aquino on 14/12/21.
//

import UIKit
import Lottie

class HomeViewController: BaseListViewController, UICollectionViewDelegateFlowLayout {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        collectionView.register(HomeStoryCollectionViewCell.self, forCellWithReuseIdentifier: HomeStoryCollectionViewCell.identifier)
        collectionView.register(HomeVideoCollectionViewCell.self, forCellWithReuseIdentifier: HomeVideoCollectionViewCell.identifier)
    }
    
    private func buildViewHierarchy() {
        
        
    }
    
    private func setupConstraints() {
     
    }
    
    override func numberOfSections(in collectionView: UICollectionView) -> Int {
        return 2
    }
    

    override func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        if section == 0 {
            return 1
        } else {
            return 4
        }
    }


    override func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        if indexPath.section == 0 {
            if let cell = collectionView.dequeueReusableCell(withReuseIdentifier: HomeStoryCollectionViewCell.identifier, for: indexPath) as? HomeStoryCollectionViewCell {
                return cell
            }
        } else {
            if let cell = collectionView.dequeueReusableCell(withReuseIdentifier: HomeVideoCollectionViewCell.identifier, for: indexPath) as? HomeVideoCollectionViewCell {
                return cell
            }
        }
       
        
        return UICollectionViewCell()
        
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        if indexPath.section == 0 {
            return CGSize(width: collectionView.bounds.width, height: collectionView.bounds.height * 0.3)
        } else {
            return CGSize(width: collectionView.bounds.width, height: collectionView.bounds.height * 0.6)
        }
        
    }
 
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumLineSpacingForSectionAt section: Int) -> CGFloat {
        return 5
    }


}

