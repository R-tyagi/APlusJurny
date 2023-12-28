//
//  Extention.swift
//  APlusCalculator
//
//  Created by ravit chaudhary on 01/04/23.
//

import Foundation
import UIKit
extension UIView {
    
    func setShadow(shadowRadius: CGFloat) {
        layer.shadowColor = UIColor.darkGray.cgColor
        layer.shadowOpacity = 1
        layer.shadowRadius = shadowRadius
        layer.shadowOffset = CGSize.zero
    }
}
