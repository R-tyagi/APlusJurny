//
//  FirstCELL.swift
//  APlusCalculator
//
//  Created by ravit chaudhary on 06/04/23.
//

import UIKit

class FirstCELL: UICollectionViewCell {
    @IBOutlet var ContentVW: UIView!
    override func awakeFromNib() {
        ContentVW.layer.borderColor = #colorLiteral(red: 0.6000000238, green: 0.6000000238, blue: 0.6000000238, alpha: 1)
        ContentVW.layer.borderWidth = 0.6
        ContentVW.layer.cornerRadius = 14

        
    }
}
