//
//  UIViewController+Extension.swift
//  Note
//
//  Created by MacBook Pro on 5/12/23.
//

import UIKit

extension UIViewController {
    var hasTopNotch: Bool {
        return UIApplication.shared.delegate?.window??.safeAreaInsets.top ?? 0 > 20
    }
}
