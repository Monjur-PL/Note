//
//  UIColor+Extension.swift
//  Note
//
//  Created by iMAC on 4/12/23.
//

import UIKit

extension UIColor {

    enum Note {
        enum Green {
            static let HighlightGreen = hexUI(hex: "E9F7DA")
            static let GrannySmith = hexUI(hex: "5DB407")
        }

        enum Blue {
            static let Light = hexUI(hex: "D8F3FF")
            static let Sky = hexUI(hex: "#2898E0")
        }

        enum Yellow {
            static let Base = hexUI(hex: "EBCE00")
        }

        enum Red {
            static let Maraschino = hexUI(hex: "FF3333")
        }

        enum Gray {
            static let Lightest = hexUI(hex: "F4F4F4")
            static let Light = hexUI(hex: "DADADA")
            static let Base = hexUI(hex: "BBBBBB")
            static let Dark = hexUI(hex: "949494")
            static let PreDark = hexUI(hex: "6D6D6D")
            static let Darker = hexUI(hex: "464646")
            static let Darkest = hexUI(hex: "1F1F1F")
        }
    }
}

private func hexUI(hex: String) -> UIColor {
    var cString: String = hex.trimmingCharacters(in: .whitespacesAndNewlines).uppercased()
    if cString.hasPrefix("#") {
        cString.remove(at: cString.startIndex)
    }
    if cString.count != 6 {
        return .gray
    }
    var rgbValue: UInt64 = 0
    Scanner(string: cString).scanHexInt64(&rgbValue)
    return UIColor(
        red: CGFloat((rgbValue & 0xFF0000) >> 16) / 255,
        green: CGFloat((rgbValue & 0x00FF00) >> 8) / 255,
        blue: CGFloat(rgbValue & 0x0000FF) / 255,
        alpha: CGFloat(1)
    )
}

