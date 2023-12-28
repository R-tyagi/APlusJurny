//
//  selectplanCELL.swift
//  APlusCalculator
//
//  Created by ravit chaudhary on 06/04/23.
//

import UIKit

class selectplanCELL: UICollectionViewCell {
    @IBOutlet var BorderView: UIView!
    
    @IBOutlet var Borderlineview: UIView!
    
    @IBOutlet var FirstYearBtn: UIButton!
    
    @IBOutlet var SecondyearVw: UIView!
    @IBOutlet var firstyearVW: UIView!
    @IBOutlet var thirdyearVw: UIView!
    
    @IBOutlet var ThirdYearBtn: UIButton!
    @IBOutlet var SecondYearBtn: UIButton!
    override func awakeFromNib() {
        firstyearVW.layer.borderColor = #colorLiteral(red: 0.6000000238, green: 0.6000000238, blue: 0.6000000238, alpha: 1)
        SecondyearVw.layer.borderColor = #colorLiteral(red: 0.6000000238, green: 0.6000000238, blue: 0.6000000238, alpha: 1)
        thirdyearVw.layer.borderColor = #colorLiteral(red: 0.6000000238, green: 0.6000000238, blue: 0.6000000238, alpha: 1)
        BorderView.layer.borderColor = #colorLiteral(red: 0.6000000238, green: 0.6000000238, blue: 0.6000000238, alpha: 1)
        Borderlineview.layer.borderColor = #colorLiteral(red: 0.7399427428, green: 0.07450980693, blue: 0.02745098062, alpha: 1)


        Borderlineview.layer.borderWidth = 1.5
        BorderView.layer.borderWidth = 1.5
        firstyearVW.layer.borderWidth = 1.5
        SecondyearVw.layer.borderWidth = 1.5
        thirdyearVw.layer.borderWidth = 1.5

        Borderlineview.layer.cornerRadius = 14
        firstyearVW.layer.cornerRadius = 14
        SecondyearVw.layer.cornerRadius = 14
        thirdyearVw.layer.cornerRadius = 14
        BorderView.layer.cornerRadius = 12
        
    }
    
    override var isSelected: Bool {

        didSet {
            if self.isSelected {

                BorderView.backgroundColor = #colorLiteral(red: 0.3411764801, green: 0.6235294342, blue: 0.1686274558, alpha: 1)
                BorderView.layer.borderColor = #colorLiteral(red: 0.3411764801, green: 0.6235294342, blue: 0.1686274558, alpha: 1)
                Borderlineview.layer.borderWidth = 0.8
                Borderlineview.layer.cornerRadius = 8
                Borderlineview.layer.borderColor = #colorLiteral(red: 0.3411764801, green: 0.6235294342, blue: 0.1686274558, alpha: 1)
                
          


            } else {
                BorderView.backgroundColor = #colorLiteral(red: 0.7399427428, green: 0.07450980693, blue: 0.02745098062, alpha: 1)
                BorderView.layer.borderColor = #colorLiteral(red: 0.7338850505, green: 0.07450980693, blue: 0.02745098062, alpha: 1)
                Borderlineview.layer.borderColor = #colorLiteral(red: 0.7338850505, green: 0.07450980693, blue: 0.02745098062, alpha: 1)
                Borderlineview.layer.borderWidth = 0.8
                Borderlineview.layer.cornerRadius = 8
            
            }
        }
    }
}
