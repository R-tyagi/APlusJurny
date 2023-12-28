//
//  TableCELL.swift
//  APlusCalculator
//
//  Created by ravit chaudhary on 02/04/23.
//

import UIKit

class TableCELL: UITableViewCell {

    @IBOutlet var view: UIView!
    override func awakeFromNib() {
        super.awakeFromNib()
        view.layer.borderColor = #colorLiteral(red: 0.6000000238, green: 0.6000000238, blue: 0.6000000238, alpha: 1)

        
        
        view.layer.borderWidth = 1.5
        view.layer.cornerRadius = 10
        
        
        
    }

  

}
