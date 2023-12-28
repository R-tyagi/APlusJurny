//
//  DiscountforyouFATHERtableCELL.swift
//  APlusCalculator
//
//  Created by ravit chaudhary on 03/04/23.
//

import UIKit

class DiscountforyouFATHERtableCELL: UITableViewCell {
    @IBOutlet var ContentViewborderline: UIView!
    override func awakeFromNib() {
        super.awakeFromNib()
        ContentViewborderline.layer.borderColor = #colorLiteral(red: 0.6000000238, green: 0.6000000238, blue: 0.6000000238, alpha: 1)

        ContentViewborderline.layer.borderWidth = 1.5
        ContentViewborderline.layer.cornerRadius = 14
    }

  

}
