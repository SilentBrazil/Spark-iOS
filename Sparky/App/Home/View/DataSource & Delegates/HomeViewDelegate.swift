//
//  HomeViewDelegate.swift
//  Sparky
//
//  Created by Marcos Kilmer Pereira de Aquino on 16/12/21.
//

import UIKit

class HomeViewDelegate: NSObject, UICollectionViewDelegate, UICollectionViewDelegateFlowLayout {
    
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
