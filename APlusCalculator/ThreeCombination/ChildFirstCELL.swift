//
//  ChildFirstCELL.swift
//  APlusCalculator
//
//  Created by ravit chaudhary on 03/04/23.
//

import UIKit

class ChildFirstCELL: UICollectionViewCell {
    @IBOutlet var CheckBoxImgVw: UIImageView!
    @IBOutlet var contentborderVW: UIView!
    
    override func awakeFromNib() {
        contentborderVW.layer.borderColor = #colorLiteral(red: 0.6000000238, green: 0.6000000238, blue: 0.6000000238, alpha: 1)
        contentborderVW.layer.borderWidth = 0.6
        contentborderVW.layer.cornerRadius = 14


    }
    override var isSelected: Bool {

        didSet {
            if self.isSelected {
                CheckBoxImgVw.image = UIImage(named:"CheckedImage")

            } else {
                CheckBoxImgVw.image = UIImage(named:"uncheckImg")

            }
        }
    }
}
