
import UIKit
import CoreLocation
import DropDown

import WebKit
import SafariServices
//import SwiftyPlistManager
class A_HealthInsuranceVC: UIViewController,CLLocationManagerDelegate {
    struct MyObject: Codable {
        var key: String
    }
    
    
@IBOutlet var NameTxtFld:       UITextField!
@IBOutlet var MobileTxtFld:     UITextField!
@IBOutlet var EmailTxtFld:      UITextField!
    @IBOutlet var PincodeTxtFld:    UITextField!{
        didSet {
            PincodeTxtFld.delegate = self
        }
    }
    
    
@IBOutlet var StateTxtFld:      UITextField!
@IBOutlet var CityTxtFld:       UITextField!
    
@IBOutlet var MobileErrorLab:    UILabel!
@IBOutlet var EmailErrorLab:     UILabel!
    
@IBOutlet var GenderBtn:         UIButton!
@IBOutlet var GetQuotesBtn:      UIButton!
    

    var agee = String()
    var arrCityZone = [StateCityZoneSheetModel]()
    var arrStateZone = [PinCodeStateZoneSheetModel]()
    
    var arrStateDropDown = [String]()
    var arrCityDropdown = [String]()
    
    @IBOutlet var Statebtn: UIButton!
    
    @IBOutlet var CityBtn: UIButton!
    override func viewDidLoad() {
        super.viewDidLoad()
        NameTxtFld.delegate = self
        MobileTxtFld.delegate = self
        EmailTxtFld.delegate = self

        StateTxtFld.delegate = self
        CityTxtFld.delegate = self

        StateTxtFld.textAlignment = .center
        CityTxtFld.textAlignment = .center



        
        EmailErrorLab.isHidden = true
        MobileErrorLab.isHidden = true

//        self.Pincode_API_POST(Token:"abcHkl7900@8Uyhkj1234")
        self.readJSONFile()
    }
    func readJSONFile() {
        
        do {
           if let bundlePath = Bundle.main.path(forResource: "PincodeAccess", ofType: "json"),
           let jsonData = try String(contentsOfFile: bundlePath).data(using: .utf8) {
               do {
                   let res = try JSONDecoder().decode(PincodeDataModel.self, from: jsonData)
                   arrCityZone = res.StateCityZoneSheet ?? []
                   arrStateZone = res.PinCodeStateZoneSheet ?? []
                   print("Pincode State ==== ", arrStateZone.count)
                   print("Pincode State ==== ", arrCityZone.count)
               } catch {
                   print(error)
               }
           }
        } catch {
           print(error)
            
        }
     }

    func invalidPhoneNumber(_ value: String) -> String?
    {
        let set = CharacterSet(charactersIn: value)
        if !CharacterSet.decimalDigits.isSuperset(of: set)
        {
            return "Phone Number must contain only digits"
        }
        
        if value.count != 10
        {
            return "Phone Number must be 10 Digits in Length"
        }
        return nil
        
    }
    func invalidEmail(_ value: String) -> String?
    {
        let reqularExpression = "[A-Z0-9a-z._%+-]+@[A-Za-z0-9.-]+\\.[A-Za-z]{2,64}"
        let predicate = NSPredicate(format: "SELF MATCHES %@", reqularExpression)
        if !predicate.evaluate(with: value)
        {
            return "Invalid Email Address"
        }
        
        return nil
        
    }

    @IBAction func GetQuotesActionBtn(_ sender: UIButton) {
        
        if NameTxtFld.text == ""
        {
            alert(message: "Enter Your Name ")
            
        }
        else if MobileTxtFld.text == ""
        {
            alert(message: "Enter Your Mobile ")
        }
        else if StateTxtFld.text == ""
        {
            alert(message: "Please Enter your State")
        }
        else if CityTxtFld.text == ""
        {
            alert(message: "Please Enter your City")
        }

    }
    
    @IBAction func StateDropdownActionbtn(_ sender: UIButton) {
        let dropDown = DropDown()
        dropDown.direction = .bottom
        dropDown.anchorView = (sender as! AnchorView)
        dropDown.dataSource = arrStateDropDown
        dropDown.selectionAction = { [unowned self] (index: Int, item: String) in
            self.Statebtn.setTitle(item, for: .normal)
            
        }
        dropDown.width = (sender as AnyObject).frame.width
        dropDown.show()
        
        
    }
    @IBAction func GenderSelectionActionBtn(_ sender: UIButton) {
        
        let dropDown = DropDown()
         dropDown.anchorView = (sender as? AnchorView)
         dropDown.dataSource = ["Select Gender","Male","Female"]
         dropDown.selectionAction = {[unowned self] (index: Int , item:String ) in
             self.GenderBtn?.setTitle(item, for: .normal)
             self.agee  = String(item)
             print(self.agee)
             self.GenderBtn?.setTitle(item, for: .normal)
         }
         dropDown.width = (sender as AnyObject).frame.width
         dropDown.show()
        
        
    }

    @IBAction func CityDropdownActionbtn(_ sender: UIButton) {
        self.CityTxtFld.becomeFirstResponder()
//        let array = [arrStateZone]
//
//        let dropDown = DropDown()
//        dropDown.direction = .bottom
//        dropDown.anchorView = (sender as! AnchorView)
//        dropDown.dataSource = arrCityDropdown
//        dropDown.selectionAction = { [unowned self] (index: Int, item: String) in
//            self.CityBtn.setTitle(item, for: .normal)
//        }
//        dropDown.width = (sender as AnyObject).frame.width
//        dropDown.show()
        
        let dropDown = DropDown()
        dropDown.direction = .bottom
        dropDown.anchorView = (sender as AnchorView)
        dropDown.dataSource = arrCityDropdown
        dropDown.selectionAction = { [unowned self] (index: Int, item: String) in
            self.CityBtn.setTitle(item, for: .normal)
        }
        dropDown.width = (sender as AnyObject).frame.width
        dropDown.show()
    
    }
  
    @IBAction func MobileTxtFldEditingChanged(_ sender: UITextField) {
        
        if let phoneNumber = MobileTxtFld.text
        {
            if let errorMessage = invalidPhoneNumber(phoneNumber)
            {
                MobileErrorLab.text = errorMessage
                MobileErrorLab.isHidden = false
            }
            else
            {
                MobileErrorLab.isHidden = true
            }
        }
        checkForValidForm()
        
        
    }
    
    
    @IBAction func EmailTxtFldEditingChanged(_ sender: UITextField) {
        
        if let email = EmailTxtFld.text
        {
            if let errorMessage = invalidEmail(email)
            {
                EmailErrorLab.text = errorMessage
                EmailErrorLab.isHidden = false
            }
            else
            {
                EmailErrorLab.isHidden = true
            }
        }
        
        checkForValidForm()
        
        
        
        
    }
    func checkForValidForm()
    {
        if EmailErrorLab.isHidden && MobileErrorLab.isHidden
        {
            GetQuotesBtn.isEnabled = true
        }
        else
        {
            GetQuotesBtn.isEnabled = false
        }
    }
    
    
}


extension A_HealthInsuranceVC:UITextFieldDelegate{
//    func textField(_ textField: UITextField, shouldChangeCharactersIn range: NSRange, replacementString string: String) -> Bool {
//        if textField == StateTxtFld{
//
//            return false
//
//
//
//        }else if textField == CityTxtFld{
//
//            return false
//
//        }
//
//        return true
//
//    }
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        switch textField {
        case PincodeTxtFld:
            PincodeTxtFld.resignFirstResponder()
        default:
            break
        }
        return true
    }
    
    func textFieldShouldEndEditing(_ textField: UITextField) -> Bool {
        
        if arrCityZone.contains(where: { $0.PinCode == PincodeTxtFld.text }) {
            print("True",PincodeTxtFld.text!)
        } else {
             // not
            print("False",PincodeTxtFld.text!)
        }
        
        return true
    }
    
    func textFieldDidEndEditing(_ textField: UITextField) {
        
        print("textFieldDidEndEditing True",PincodeTxtFld.text!)
        var state = [String]()
        var city = [String]()
        let pinText = PincodeTxtFld.text ?? ""
        for obj in arrCityZone {
            let pin = obj.PinCode ?? ""
            if pin == pinText {
                let stateValue = obj.State ?? ""
                state.append(stateValue)
                print("Find State == ", state)
                let cityvalue = obj.City ?? ""
                city.append(cityvalue)
                print("city Value == ", city)
                
                
            }
        }
        //MAKE State dropDown Array
        arrStateDropDown.removeAll()
        arrStateDropDown = state
        arrCityDropdown.removeAll()
        arrCityDropdown = city
        
        
        if arrCityZone.contains(where: { $0.PinCode == PincodeTxtFld.text }) {

        } else {
             print(" textFieldDidEndEditing False",PincodeTxtFld.text)
        }
        
//        var pincode = arrStateZone.contains(where: pincodeTextfield.text)
//        print(pincode)
    }
}
