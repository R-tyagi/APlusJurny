//
//  UserDetails_VC.swift
//  APlusCalculator
//
//  Created by DianApps on 27/03/23.
//

import UIKit

class UserDetails_VC: UIViewController {

    @IBOutlet weak var pincodeTextfield: UITextField!
    @IBOutlet weak var stateTextfield: UITextField!
    @IBOutlet weak var cityTextfield: UITextField!
    @IBOutlet weak var specifyGenderTextfield: UITextField!
    @IBOutlet weak var policyTypeTextfield: UITextField!
    @IBOutlet weak var ageTextfield: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.pincodeTextfield.layer.cornerRadius = 20
        self.pincodeTextfield.layer.borderColor = UIColor.black.cgColor
        self.pincodeTextfield.layer.borderWidth = 0.5

        self.stateTextfield.layer.cornerRadius = 20
        self.stateTextfield.layer.borderColor = UIColor.black.cgColor
        self.stateTextfield.layer.borderWidth = 0.5
        
        self.cityTextfield.layer.cornerRadius = 20
        self.cityTextfield.layer.borderColor = UIColor.black.cgColor
        self.cityTextfield.layer.borderWidth = 0.5
        
        self.specifyGenderTextfield.layer.cornerRadius = 20
        self.specifyGenderTextfield.layer.borderColor = UIColor.black.cgColor
        self.specifyGenderTextfield.layer.borderWidth = 0.5
        
        self.policyTypeTextfield.layer.cornerRadius = 20
        self.policyTypeTextfield.layer.borderColor = UIColor.black.cgColor
        self.policyTypeTextfield.layer.borderWidth = 0.5
        
        self.ageTextfield.layer.cornerRadius = 20
        self.ageTextfield.layer.borderColor = UIColor.black.cgColor
        self.ageTextfield.layer.borderWidth = 0.5
        
        pincodeTextfield.addPadding(padding: .left(16))
        stateTextfield.addPadding(padding: .left(16))
        cityTextfield.addPadding(padding: .left(16))
        specifyGenderTextfield.addPadding(padding: .left(16))
        policyTypeTextfield.addPadding(padding: .left(16))
        ageTextfield.addPadding(padding: .left(16))
        
    }
    

   

}
