//
//  HomeStoryCollectionViewCell.swift
//  Sparky
//
//  Created by Marcos Kilmer Pereira de Aquino on 14/12/21.
//

import UIKit

class HomeStoryCollectionViewCell: UICollectionViewCell {
    static let identifier = "HomeStoryCollectionViewCellIdentifier"
   // private let storyCollectionView = StoryCollectionView()
    
    private var podcastImage = RoundImageView(named: "flow")
    private var homeLatestVideosCollectionView = StoryCollectionView()
    
    private lazy var podcastNameLabel: UILabel = {
        let label = UILabel()
        label.font = UIFont.boldSystemFont(ofSize: 16)
        label.textColor = .white
        label.text = "Flow Podcast"
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    private lazy var leftArrow: UIImageView = {
       let imageView = UIImageView()
        imageView.image = UIImage(named: "left-arrow")
        imageView.contentMode = .scaleAspectFit
        imageView.translatesAutoresizingMaskIntoConstraints = false
        return imageView
    }()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        buildViewHierarchy()
        setupConstraints()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    private func buildViewHierarchy() {
        translatesAutoresizingMaskIntoConstraints = false
        addSubview(podcastImage)
        addSubview(podcastNameLabel)
        addSubview(leftArrow)
        addSubview(homeLatestVideosCollectionView)
    }
    
    private func setupConstraints() {
        
        NSLayoutConstraint.activate([
            podcastImage.topAnchor.constraint(equalTo: self.safeAreaLayoutGuide.topAnchor, constant: 10),
            podcastImage.leadingAnchor.constraint(equalTo: self.safeAreaLayoutGuide.leadingAnchor, constant: 20)
        ])
        
        NSLayoutConstraint.activate([
            podcastNameLabel.leadingAnchor.constraint(equalTo: podcastImage.trailingAnchor, constant: 80),
            podcastNameLabel.topAnchor.constraint(equalTo: podcastImage.topAnchor, constant: 15),
        ])
        
        NSLayoutConstraint.activate([
            leftArrow.topAnchor.constraint(equalTo: podcastImage.topAnchor, constant: 15),
            leftArrow.trailingAnchor.constraint(equalTo: self.trailingAnchor, constant: -20)
        ])
        
        NSLayoutConstraint.activate([
            homeLatestVideosCollectionView.centerXAnchor.constraint(equalTo: self.centerXAnchor),
            homeLatestVideosCollectionView.centerYAnchor.constraint(equalTo: self.centerYAnchor),
            homeLatestVideosCollectionView.widthAnchor.constraint(equalToConstant: 10),
            homeLatestVideosCollectionView.heightAnchor.constraint(equalToConstant: 40),
            homeLatestVideosCollectionView.leadingAnchor.constraint(equalTo: self.leadingAnchor)
        ])
    }
}
