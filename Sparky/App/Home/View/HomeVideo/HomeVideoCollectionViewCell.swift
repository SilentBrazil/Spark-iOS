//
//  HomeVideoCollectionViewCell.swift
//  Sparky
//
//  Created by Marcos Kilmer Pereira de Aquino on 15/12/21.
//

import UIKit

class HomeVideoCollectionViewCell: UICollectionViewCell {
    static let identifier = "HomeVideoCollectionViewCellIdentifier"
    
    private var podcastImage = RoundImageView(named: "flow")
    
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
    
    
    private lazy var firstStackView: UIStackView = { [unowned self] in
        let stackView = UIStackView(arrangedSubviews: [self.podcastImage, self.podcastNameLabel, self.leftArrow])
        stackView.spacing = 3
        stackView.alignment = .leading
        stackView.axis = .horizontal
        stackView.distribution = .fillEqually
        stackView.translatesAutoresizingMaskIntoConstraints = false
        return stackView
    }()
    
    private lazy var secondStackView: UIStackView = { [unowned self] in
        let stackView = UIStackView(arrangedSubviews: [self.podcastImage, self.podcastNameLabel])
        stackView.spacing = 3
        stackView.alignment = .leading
        stackView.axis = .horizontal
        stackView.distribution = .fillEqually
        stackView.translatesAutoresizingMaskIntoConstraints = false
        return stackView
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
        self.addSubview(podcastImage)
        self.addSubview(podcastNameLabel)
        self.addSubview(leftArrow)
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
    }
}
