//
//  HomeLatetsVideosCollectionDataSource.swift
//  Sparky
//
//  Created by Marcos Kilmer Pereira de Aquino on 15/12/21.
//

import UIKit

class HomeLatetsVideosCollectionDataSource: NSObject, UICollectionViewDataSource {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 10
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        if let cell = collectionView.dequeueReusableCell(withReuseIdentifier: HomeLatestVideosCollectionViewCell.identifier, for: indexPath) as? HomeLatestVideosCollectionViewCell {
            cell.backgroundColor = .blue
            return cell
        }
        
        return UICollectionViewCell()
    }
    
    
}
