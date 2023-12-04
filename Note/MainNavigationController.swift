//
//  MainNavigationController.swift
//  Note
//
//  Created by iMAC on 4/12/23.
//


import UIKit
import Lottie

class MainNavigationController: UINavigationController {
    
    let loginText: UILabel = {
        let label = UILabel()
        label.font = UIFont(name: "Lato-Regular", size: 32)
        label.textColor = UIColor.Note.Gray.Darkest
        label.textAlignment = .center
        label.text = "Note"
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
     
    let logoAnimation = LOTAnimationView(name: "glyph", bundle: Bundle.main)
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.backgroundColor = UIColor.Note.Green.GrannySmith
        navigationController?.navigationBar.barStyle = .black
        navigationBar.setBackgroundImage(UIImage(), for: UIBarMetrics.default)
        navigationBar.barTintColor = UIColor.Note.Green.GrannySmith
        navigationBar.shadowImage = UIImage()
        navigationBar.isTranslucent = false
        
        logoAnimation.frame = .zero
        logoAnimation.contentMode = .scaleAspectFit
        logoAnimation.loopAnimation = false
        logoAnimation.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(logoAnimation)
        logoAnimation.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        logoAnimation.centerYAnchor.constraint(equalTo: view.centerYAnchor, constant: -150).isActive = true
        logoAnimation.heightAnchor.constraint(equalToConstant: 130).isActive = true
        logoAnimation.widthAnchor.constraint(equalToConstant: 130).isActive = true
        logoAnimation.play()
    }
}


