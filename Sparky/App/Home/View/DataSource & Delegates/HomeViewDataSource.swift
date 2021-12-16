//
//  HomeViewDataSource.swift
//  Sparky
//
//  Created by Marcos Kilmer Pereira de Aquino on 16/12/21.
//

import UIKit

class HomeViewDataSource: NSObject, UICollectionViewDataSource {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        if section == 0 {
            return 1
        } else {
            return 4
        }
    }
    
    func numberOfSections(in collectionView: UICollectionView) -> Int {
        return 2
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
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
    
    
}
