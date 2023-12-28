//
//  selfCELL.swift
//  APlusCalculator
//
//  Created by ravit chaudhary on 06/04/23.
//

import UIKit

class selfCELL: UICollectionViewCell {
    @IBOutlet var ImgVw: UIImageView!
    @IBOutlet var borderVW: UIView!
    
    override func awakeFromNib() {
        borderVW.layer.borderColor = #colorLiteral(red: 0.6000000238, green: 0.6000000238, blue: 0.6000000238, alpha: 1)
        borderVW.layer.borderWidth = 0.6
        borderVW.layer.cornerRadius = 14

        
    }
    override var isSelected: Bool {

        didSet {
            if self.isSelected {
                ImgVw.image = UIImage(named: "CheckedImage")
      
            } else {
                ImgVw.image = UIImage(named: "uncheckImg")
            
            }
        }
    }

}
