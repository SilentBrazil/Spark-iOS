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
    
    private lazy var navigationTitle: UILabel = {
        let label = UILabel()
        label.textColor = .white
        label.textAlignment = .center
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    
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
        view.addSubview(navigationTitle)
        navigationTitle.text = navTitle
        
        NSLayoutConstraint.activate([
            navigationTitle.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            navigationTitle.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 5)
        ])
    }
    
    private func setLeftThunder() {
        let animationView: AnimationView = .init(name: "thunder")
       
        animationView.contentMode = .scaleAspectFit
        
        animationView.loopMode = .loop
        
        animationView.animationSpeed = 1.5
        
        view.addSubview(animationView)
        
        
        animationView.translatesAutoresizingMaskIntoConstraints = false
        
        NSLayoutConstraint.activate([
            animationView.widthAnchor.constraint(equalToConstant: 50),
            animationView.heightAnchor.constraint(equalToConstant: 50),
            animationView.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 0),
            animationView.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 10)
        ])
        
        animationView.play()
    }
}
