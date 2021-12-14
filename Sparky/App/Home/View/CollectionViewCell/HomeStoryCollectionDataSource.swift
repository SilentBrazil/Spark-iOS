//
//  HomeStoryCollectionDataSource.swift
//  Sparky
//
//  Created by Marcos Kilmer Pereira de Aquino on 14/12/21.
//

import UIKit

class HomeStoryCollectionDataSource: NSObject, UICollectionViewDataSource {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 10
    }
    
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        if let cell = collectionView.dequeueReusableCell(withReuseIdentifier: HomeStoryCollectionViewCell.identifier, for: indexPath) as? HomeStoryCollectionViewCell {
            return cell
        }
        
        return UICollectionViewCell()
    }
    
    
}
