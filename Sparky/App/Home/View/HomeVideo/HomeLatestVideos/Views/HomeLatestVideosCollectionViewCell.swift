//
//  HomeLatestVideosCollectionViewCell.swift
//  Sparky
//
//  Created by Marcos Kilmer Pereira de Aquino on 15/12/21.
//

import UIKit
import youtube_ios_player_helper

class HomeLatestVideosCollectionViewCell: UICollectionViewCell {
    static let identifier = "HomeLatestVideosCollectionViewCellIdentifier"
    
    private let playerView = YTPlayerView()

    
    override init(frame: CGRect) {
        super.init(frame: frame)
        buildViewHierarchy()
        setupConstraints()
        let playvarsDic = ["controls": 1, "playsinline": 0, "autohide": 1, "showinfo": 1, "autoplay": 1, "modestbranding": 1]
        playerView.load(withVideoId: "YlstuFZLMhU", playerVars: playvarsDic)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    private func buildViewHierarchy() {
        translatesAutoresizingMaskIntoConstraints = false
        addSubview(playerView)
        playerView.translatesAutoresizingMaskIntoConstraints = false
      
    }
    
    private func setupConstraints() {
        NSLayoutConstraint.activate([
            playerView.widthAnchor.constraint(equalTo: self.widthAnchor),
            playerView.heightAnchor.constraint(equalTo: self.heightAnchor),
            playerView.centerXAnchor.constraint(equalTo: self.centerXAnchor)
        ])
    }

}
