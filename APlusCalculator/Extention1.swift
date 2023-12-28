//
//  Extention1.swift
//  APlusCalculator
//
//  Created by ravit chaudhary on 07/04/23.
//

import UIKit
extension UITextField {
    
    
    
    func setInputViewDatePicker(target: Any, selector: Selector) {
        // Create a UIDatePicker object and assign to inputView
        let screenWidth = UIScreen.main.bounds.width
        let datePicker = UIDatePicker(frame: CGRect(x: 0, y: 0, width: screenWidth, height: 216))//1
        datePicker.datePickerMode = .date //2
        // iOS 14 and above
        if #available(iOS 14, *) {// Added condition for iOS 14
          datePicker.preferredDatePickerStyle = .wheels
          datePicker.sizeToFit()
        }
        self.inputView = datePicker //3
        
        // Create a toolbar and assign it to inputAccessoryView
        let toolBar = UIToolbar(frame: CGRect(x: 0.0, y: 0.0, width: screenWidth, height: 44.0)) //4
        let flexible = UIBarButtonItem(barButtonSystemItem: .flexibleSpace, target: nil, action: nil) //5
        let cancel = UIBarButtonItem(title: "Cancel", style: .plain, target: nil, action: #selector(tapCancel)) // 6
        let barButton = UIBarButtonItem(title: "Done", style: .plain, target: target, action: selector) //7
        toolBar.setItems([cancel, flexible, barButton], animated: false) //8
        self.inputAccessoryView = toolBar //9
    }
    
    @objc func tapCancel() {
        self.resignFirstResponder()
    }
    
}
extension UIView {
    
    func setUnderline(ofColor color:UIColor, andSize sized:CGFloat){
        //Making UnderLIne BOrder on UitextFld
        let underLine = CALayer()
        underLine.frame = CGRect(x: 0, y: self.frame.size.height-1, width: self.frame.size.width, height: sized)
        underLine.backgroundColor = color.cgColor
        self.layer.addSublayer(underLine)
    }
    
}
extension UITextField {
        
        enum PaddingSide {
            case left(CGFloat)
            case right(CGFloat)
            case both(CGFloat)
        }

        func AddPadding(_ padding: PaddingSide) {

            self.leftViewMode = .always
            self.layer.masksToBounds = true


            switch padding {

            case .left(let spacing):
                let paddingView = UIView(frame: CGRect(x: 0, y: 0, width: spacing, height: self.frame.height))
                self.leftView = paddingView
                self.rightViewMode = .always

            case .right(let spacing):
                let paddingView = UIView(frame: CGRect(x: 0, y: 0, width: spacing, height: self.frame.height))
                self.rightView = paddingView
                self.rightViewMode = .always

            case .both(let spacing):
                let paddingView = UIView(frame: CGRect(x: 0, y: 0, width: spacing, height: self.frame.height))
                // left
                self.leftView = paddingView
                self.leftViewMode = .always
                // right
                self.rightView = paddingView
                self.rightViewMode = .always
            }
        }
}
