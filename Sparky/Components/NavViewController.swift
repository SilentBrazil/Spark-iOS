//
//  NavViewController.swift
//  Sparky
//
//  Created by Marcos Kilmer Pereira de Aquino on 14/12/21.
//

import UIKit
import Lottie

enum NavigationMode {
    case leftThunder
    case `default`
}

class NavViewController: UIViewController {
    private var mode: NavigationMode = .default
    private var navTitle: String = ""
    
    init(mode: NavigationMode, navTitle: String) {
        super.init(nibName: nil, bundle: nil)
        self.mode = mode
        self.navTitle = navTitle
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        configure()
        setNavigationTitle()

    }
    
    
    private func configure() {
        switch mode {
        case .leftThunder:
            setLeftThunder()
        case .default : break
        }
    }
    
    private func setNavigationTitle() {
        let titleFont = UIFont.boldSystemFont(ofSize: 27)
        let title = navTitle
        let titleSize = title.size(withAttributes: [.font: titleFont])
        
        let frame = CGRect(x: 0, y: 0, width: titleSize.width, height: 10.0)
        let titleLabel = UILabel(frame: frame)
        titleLabel.font = titleFont
        titleLabel.textColor = .white
        titleLabel.textAlignment = .center
        titleLabel.text = title
        navigationItem.titleView = titleLabel

    }
    
    private func setLeftThunder() {
        let animationView: AnimationView = .init(name: "thunder")
       
        animationView.contentMode = .scaleAspectFit
        
        animationView.loopMode = .loop
        
        animationView.animationSpeed = 1.5
        
        let leftItem = UIBarButtonItem.init(customView: animationView)

        NSLayoutConstraint.activate([
            animationView.widthAnchor.constraint(equalToConstant: 100),
            animationView.heightAnchor.constraint(equalToConstant: 100)
            
        ])
        
        navigationItem.leftBarButtonItem =  leftItem
      
        animationView.play()
    }
    
}
