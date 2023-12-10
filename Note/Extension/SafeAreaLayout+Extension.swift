//
//  SafeAreaLayout+Extension.swift
//  Note
//
//  Created by MacBook Pro on 6/12/23.
//

import UIKit

extension UIView {

    var safeTopAnchor: NSLayoutYAxisAnchor {
        return safeAreaLayoutGuide.topAnchor
    }

    var safeBottomAnchor: NSLayoutYAxisAnchor {
        return safeAreaLayoutGuide.bottomAnchor
    }

    var safeRightAnchor: NSLayoutXAxisAnchor {
        return safeAreaLayoutGuide.rightAnchor
    }

    var safeLeftAnchor: NSLayoutXAxisAnchor {
        return safeAreaLayoutGuide.leftAnchor
    }

    func anchorsHW(top: NSLayoutYAxisAnchor?, topPad: CGFloat, bottom: NSLayoutYAxisAnchor?, bottomPad: CGFloat, left: NSLayoutXAxisAnchor?, leftPad: CGFloat, right: NSLayoutXAxisAnchor?, rightPad: CGFloat, height: CGFloat, width: CGFloat) {
        translatesAutoresizingMaskIntoConstraints = false
        if let top = top {
            topAnchor.constraint(equalTo: top, constant: topPad).isActive = true
        }
        if let bottom = bottom {
            bottomAnchor.constraint(equalTo: bottom, constant: bottomPad).isActive = true
        }
        if let left = left {
            leftAnchor.constraint(equalTo: left, constant: leftPad).isActive = true
        }
        if let right = right {
            rightAnchor.constraint(equalTo: right, constant: rightPad).isActive = true
        }
        if height > 0 { heightAnchor.constraint(equalToConstant: height).isActive = true }
        if width > 0 { widthAnchor.constraint(equalToConstant: width).isActive = true }
    }

    func anchors(top: NSLayoutYAxisAnchor?, topPad: CGFloat, bottom: NSLayoutYAxisAnchor?, bottomPad: CGFloat, left: NSLayoutXAxisAnchor?, leftPad: CGFloat, right: NSLayoutXAxisAnchor?, rightPad: CGFloat) {
        translatesAutoresizingMaskIntoConstraints = false
        if let top = top {
            topAnchor.constraint(equalTo: top, constant: topPad).isActive = true
        }
        if let bottom = bottom {
            bottomAnchor.constraint(equalTo: bottom, constant: bottomPad).isActive = true
        }
        if let left = left {
            leftAnchor.constraint(equalTo: left, constant: leftPad).isActive = true
        }
        if let right = right {
            rightAnchor.constraint(equalTo: right, constant: rightPad).isActive = true
        }
    }

    @objc func dismissMe() {
        print("dismissed")
    }

    func pinEdges(view: UIView) {
        topAnchor.constraint(equalTo: view.topAnchor).isActive = true
        bottomAnchor.constraint(equalTo: view.bottomAnchor).isActive = true
        leftAnchor.constraint(equalTo: view.leftAnchor).isActive = true
        rightAnchor.constraint(equalTo: view.rightAnchor).isActive = true
    }
}

