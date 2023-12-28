//
//  childCELL.swift
//  APlusCalculator
//
//  Created by ravit chaudhary on 06/04/23.
//

import UIKit

class childCELL: UICollectionViewCell {
    @IBOutlet var imagevw:UIImageView!
    
    @IBOutlet var borderVW: UIView!
    
    override func awakeFromNib() {
        borderVW.layer.borderColor = #colorLiteral(red: 0.6000000238, green: 0.6000000238, blue: 0.6000000238, alpha: 1)
        borderVW.layer.borderWidth = 0.6
        borderVW.layer.cornerRadius = 14

        
    }
    override var isSelected: Bool {

        didSet {
            if self.isSelected {
                imagevw.image = UIImage(named: "CheckedImage")
      
            } else {
                imagevw.image = UIImage(named: "uncheckImg")
            
            }
        }
    }

}
