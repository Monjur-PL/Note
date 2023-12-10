//
//  NoteSplashViewController.swift
//  Note
//
//  Created by MacBook Pro on 5/12/23.
//

import Lottie
import UIKit

class NoteSplashViewController: UIViewController {

    override var preferredStatusBarStyle: UIStatusBarStyle {
        return .lightContent
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        navigationController?.setNavigationBarHidden(true, animated: false)
        view.backgroundColor = UIColor.Note.Green.GrannySmith
        Timer.scheduledTimer(timeInterval: SPLASH_SCREEN_DELAY, target: self, selector: #selector(toLoginVC), userInfo: nil, repeats: false)
    }

    override func viewWillAppear(_ animated: Bool) {
        loadSplash()
    }

    @objc func loadSplash() {
        let logoAnimation = LOTAnimationView(name: "glyph", bundle: Bundle.main)
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

        let splashScreenAnimation = LOTAnimationView(name: "ios_splash", bundle: Bundle.main)
        splashScreenAnimation.translatesAutoresizingMaskIntoConstraints = false
        splashScreenAnimation.frame = CGRect(x: 0, y: 0, width: 0, height: 0)
        splashScreenAnimation.contentMode = .scaleAspectFit
        splashScreenAnimation.loopAnimation = true
        view.addSubview(splashScreenAnimation)

        if hasTopNotch {
            splashScreenAnimation.bottomAnchor.constraint(equalTo: view.safeBottomAnchor, constant: 120).isActive = true
        } else {
            splashScreenAnimation.bottomAnchor.constraint(equalTo: view.bottomAnchor, constant: 50).isActive = true
        }
        splashScreenAnimation.widthAnchor.constraint(equalTo: view.widthAnchor, multiplier: 1).isActive = true
        splashScreenAnimation.heightAnchor.constraint(equalTo: view.heightAnchor, multiplier: 0.65).isActive = true
        splashScreenAnimation.alpha = 1
        splashScreenAnimation.play()
        splashScreenAnimation.loopAnimation = true
    }

    @objc func toLoginVC() {
        UIView.animate(withDuration: 0.005) {
            self.view.alpha = 0
//            let loginViewController = LoginViewController()
//            self.navigationController?.pushViewController(loginViewController, animated: false)
        }
    }
}
