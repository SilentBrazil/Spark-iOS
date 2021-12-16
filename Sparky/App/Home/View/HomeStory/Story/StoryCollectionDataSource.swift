//
//  StoryCollectionDataSource.swift
//  Sparky
//
//  Created by Marcos Kilmer Pereira de Aquino on 14/12/21.
//

import UIKit

class StoryCollectionDataSource: NSObject, UICollectionViewDataSource {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 10
    }
    
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        if let cell = collectionView.dequeueReusableCell(withReuseIdentifier: StoryCollectionViewCell.identifier, for: indexPath) as? StoryCollectionViewCell {
            cell.backgroundColor = .white
            return cell
        }
        
        return UICollectionViewCell()
    }
    
    
}
