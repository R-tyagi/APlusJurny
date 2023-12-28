//
//  PolicyType_VC.swift
//  APlusCalculator
//
//  Created by DianApps on 24/03/23.
//

import UIKit
import DropDown
import Alamofire
import SwiftyJSON
import SVProgressHUD


class PolicyType_VC: UIViewController{

    @IBOutlet var TopmainContant:                NSLayoutConstraint!
    @IBOutlet var YoucanselectSixMember:         UILabel!
    @IBOutlet weak var policySelectView:         UIView!
    @IBOutlet weak var selfView:                 UIView!
    @IBOutlet weak var dobView:                  UIView!
    @IBOutlet weak var genderView:               UIView!
    @IBOutlet weak var checkView:                UIView!
    @IBOutlet weak var spouseView:               UIView!
    @IBOutlet weak var motherView:               UIView!
    @IBOutlet weak var fatherView:               UIView!
    @IBOutlet weak var motherInLawView:          UIView!
    @IBOutlet weak var fatherInLawView:          UIView!
    @IBOutlet weak var daughterInLawView:        UIView!
    @IBOutlet weak var sonInLowView:             UIView!
    @IBOutlet weak var brotherView:              UIView!
    @IBOutlet weak var sisterView:               UIView!
    @IBOutlet weak var grandFatherView:          UIView!
    @IBOutlet weak var grandMotherView:          UIView!
    @IBOutlet weak var grandSonView:             UIView!
    @IBOutlet weak var grandDaughterView:        UIView!
    @IBOutlet weak var brotherInLawView:         UIView!
    @IBOutlet weak var sisterInLawView:          UIView!
    @IBOutlet weak var nephewView:               UIView!
    @IBOutlet weak var nieceView:                UIView!
    @IBOutlet weak var sonView:                  UIView!
    @IBOutlet weak var daughterView:             UIView!
    @IBOutlet weak var SpouseDOBView:            UIView!
    @IBOutlet weak var mothereDOBView:           UIView!
    @IBOutlet weak var fatherDOBView:            UIView!
    @IBOutlet weak var motherInLawDOBView:       UIView!
    @IBOutlet weak var fatherInLawDOBView:       UIView!
    @IBOutlet weak var daughterInLawDOBView:     UIView!
    @IBOutlet weak var sonInLawDOBView:          UIView!
    @IBOutlet weak var brotherDOBView:           UIView!
    @IBOutlet weak var sisterDOBView:            UIView!
    @IBOutlet weak var grandFatherDOBView:       UIView!
    @IBOutlet weak var grandMotherDOBView:       UIView!
    @IBOutlet weak var grandSonDOBView:          UIView!
    @IBOutlet weak var grandDaughterDOBView:     UIView!
    @IBOutlet weak var brotherInLawDOBView:      UIView!
    @IBOutlet weak var sisterInLawDOBView:       UIView!
    @IBOutlet weak var nephewDOBView:            UIView!
    @IBOutlet weak var nieceDOBView:             UIView!
    @IBOutlet weak var sonDOBView:               UIView!
    @IBOutlet weak var daughterDOBView:          UIView!
    @IBOutlet weak var SpouseGenderView:         UIView!
    @IBOutlet weak var mothereGenderView:        UIView!
    @IBOutlet weak var fatherGenderView:         UIView!
    @IBOutlet weak var motherInLawGenderView:    UIView!
    @IBOutlet weak var fatherInLawGenderView:    UIView!
    @IBOutlet weak var daughterInLawGenderView:  UIView!
    @IBOutlet weak var sonInLawGenderView:       UIView!
    @IBOutlet weak var brotherGenderView:        UIView!
    @IBOutlet weak var sisterGenderView:         UIView!
    @IBOutlet weak var grandFatherGenderView:    UIView!
    @IBOutlet weak var grandMotherGenderView:    UIView!
    @IBOutlet weak var grandSonGenderView:       UIView!
    @IBOutlet weak var grandDaughterGenderView:  UIView!
    @IBOutlet weak var brotherInLawGenderView:   UIView!
    @IBOutlet weak var sisterInLawGenderView:    UIView!
    @IBOutlet weak var nephewGenderView:         UIView!
    @IBOutlet weak var nieceGenderView :         UIView!
    @IBOutlet weak var sonGenderView:            UIView!
    @IBOutlet weak var daughterGenderView:       UIView!
    
    @IBOutlet weak var SpouseCheckView:          UIView!
    @IBOutlet weak var mothereCheckView:         UIView!
    @IBOutlet weak var fatherCheckView:          UIView!
    @IBOutlet weak var motherInLawCheckView:     UIView!
    @IBOutlet weak var fatherInLawCheckView:     UIView!
    @IBOutlet weak var daughterInLawCheckView:   UIView!
    @IBOutlet weak var sonInLawCheckView:        UIView!
    @IBOutlet weak var brotherCheckView:         UIView!
    @IBOutlet weak var sisterCheckView:          UIView!
    @IBOutlet weak var grandFatherCheckView:     UIView!
    @IBOutlet weak var grandMotherCheckView:     UIView!
    @IBOutlet weak var grandSonCheckView:        UIView!
    @IBOutlet weak var grandDaughterCheckView:   UIView!
    @IBOutlet weak var brotherInLawCheckView:    UIView!
    @IBOutlet weak var sisterInLawCheckView:     UIView!
    @IBOutlet weak var nephewCheckView:          UIView!
    @IBOutlet weak var nieceCheckView:           UIView!
    @IBOutlet weak var sonCheckView:             UIView!
    @IBOutlet weak var daughterCheckView:        UIView!


    @IBOutlet weak var mainView:                UIView!
    @IBOutlet weak var mainViewHeight:          NSLayoutConstraint!
    @IBOutlet weak var scrollViewHeight:        NSLayoutConstraint!
    @IBOutlet weak var noteView:                UIView!
    @IBOutlet weak var noteeNsView:             NSLayoutConstraint!
    
    
    
    
    
    @IBOutlet weak var selfAgeLbl:           UILabel!
    @IBOutlet weak var spouseAgeLbl:         UILabel!
    @IBOutlet weak var motherAgeLbl:         UILabel!
    @IBOutlet weak var fatherAgeLbl:         UILabel!
    @IBOutlet weak var motherinlawAgeLbl:    UILabel!
    @IBOutlet weak var fatherinlawAgeLbl:    UILabel!
    @IBOutlet weak var daughterinlawAgeLbl:  UILabel!
    @IBOutlet weak var soninlawAgeLbl:       UILabel!
    @IBOutlet weak var brotherAgeLbl:        UILabel!
    @IBOutlet weak var sisterAgeLbl:         UILabel!
    @IBOutlet weak var grandFatherAgeLbl:    UILabel!
    @IBOutlet weak var grandMotherAgeLbl:    UILabel!
    @IBOutlet weak var grandSonAgeLbl:       UILabel!
    @IBOutlet weak var grandDaughterAgeLbl:  UILabel!
    @IBOutlet weak var brotherinLawAgeLbl:   UILabel!
    @IBOutlet weak var sisterInLawAgeLbl:    UILabel!
    @IBOutlet weak var nephewAgeLbl:         UILabel!
    @IBOutlet weak var nieceAgeLbl:          UILabel!
    @IBOutlet weak var sonAgeLbl:            UILabel!
    @IBOutlet weak var daughterAgeLbl:       UILabel!
    @IBOutlet var WouldYoulike:              UILabel!
    
    
    @IBOutlet weak var selfCheckBoxImg:           UIImageView!
    @IBOutlet weak var spouseCheckBoxImg:         UIImageView!
    @IBOutlet weak var motherCheckBoxImg:         UIImageView!
    @IBOutlet weak var fatherCheckBoxImg:         UIImageView!
    @IBOutlet weak var motherinlawCheckBoxImg:    UIImageView!
    @IBOutlet weak var fatherinlawCheckBoxImg:    UIImageView!
    @IBOutlet weak var daughterinlawCheckBoxImg:  UIImageView!
    @IBOutlet weak var soninlawCheckBoxImg:       UIImageView!
    @IBOutlet weak var brotherCheckBoxImg:        UIImageView!
    @IBOutlet weak var sisterCheckBoxImg:         UIImageView!
    @IBOutlet weak var grandFatherCheckBoxImg:    UIImageView!
    @IBOutlet weak var grandMotherCheckBoxImg:    UIImageView!
    @IBOutlet weak var grandSonCheckBoxImg:       UIImageView!
    @IBOutlet weak var grandDaughterCheckBoxImg:  UIImageView!
    @IBOutlet weak var brotherinlawCheckBoxImg:   UIImageView!
    @IBOutlet weak var sisterinlawCheckBoxImg:    UIImageView!
    @IBOutlet weak var nephewCheckBoxImg:         UIImageView!
    @IBOutlet weak var nieceCheckBoxImg:          UIImageView!
    @IBOutlet weak var sonCheckBoxImg:            UIImageView!
    @IBOutlet weak var daughterCheckBoxImg:       UIImageView!
    
    @IBOutlet weak var selfCheckBoxBtn:           UIButton!
    @IBOutlet weak var spouseCheckBoxBtn:         UIButton!
    @IBOutlet weak var motherCheckBoxBtn:         UIButton!
    @IBOutlet weak var fatherCheckBoxBtn:         UIButton!
    @IBOutlet weak var motherinlawCheckBoxBtn:    UIButton!
    @IBOutlet weak var fatherinlawCheckBoxBtn:    UIButton!
    @IBOutlet weak var daughterinlawCheckBoxBtn:  UIButton!
    @IBOutlet weak var soninlawCheckBoxBtn:       UIButton!
    @IBOutlet weak var brotherCheckBoxBtn:        UIButton!
    @IBOutlet weak var sisterCheckBoxImgBtn:      UIButton!
    @IBOutlet weak var grandFatherCheckBoxBtn:    UIButton!
    @IBOutlet weak var grandMotherCheckBoxBtn:    UIButton!
    @IBOutlet weak var grandSonCheckBoxBtn:       UIButton!
    @IBOutlet weak var grandDaughterCheckBoxBtn:  UIButton!
    @IBOutlet weak var brotherinlawCheckBoxBtn:   UIButton!
    @IBOutlet weak var sisterinlawCheckBoxBtn:    UIButton!
    @IBOutlet weak var nephewCheckBoxBtn:         UIButton!
    @IBOutlet weak var nieceCheckBoxImgBtn:       UIButton!
    @IBOutlet weak var sonCheckBoxImgBtn:         UIButton!
    @IBOutlet weak var daughterCheckBoxBtn:       UIButton!
    @IBOutlet weak var policyTypeBtn:             UIButton!
    @IBOutlet weak var nextBtn:                   UIButton!
    
    @IBOutlet weak var SelfDOBTextField:           UITextField!
    @IBOutlet weak var SpouseDOBTextField:         UITextField!
    @IBOutlet weak var mothereDOBTextField:        UITextField!
    @IBOutlet weak var fatherDOBTextField:         UITextField!
    @IBOutlet weak var motherInLawDOBTextField:    UITextField!
    @IBOutlet weak var fatherInLawDOBTextField:    UITextField!
    @IBOutlet weak var daughterInLawDOBTextField:  UITextField!
    @IBOutlet weak var sonInLawDOBTextField:       UITextField!
    @IBOutlet weak var brotherDOBTextField:        UITextField!
    @IBOutlet weak var sisterDOBTextField:         UITextField!
    @IBOutlet weak var grandFatherDOBTextField:    UITextField!
    @IBOutlet weak var grandMotherDOBTextField:    UITextField!
    @IBOutlet weak var grandSonDOBTextField:       UITextField!
    @IBOutlet weak var grandDaughterDOBTextField:  UITextField!
    @IBOutlet weak var brotherInLawDOBTextField:   UITextField!
    @IBOutlet weak var sisterInLawDOBTextField:    UITextField!
    @IBOutlet weak var nephewDOBTextField:         UITextField!
    @IBOutlet weak var nieceDOBTextField:          UITextField!
    @IBOutlet weak var sonDOBTextField:            UITextField!
    @IBOutlet weak var daughterDOBTextField:       UITextField!
    @IBOutlet weak var policyTypeTextfield:        UITextField!
    
    
    var pickerView:           UIPickerView!
    var policyTypeArray =     [String]()
    var policyType =          String()
    let datePicker  =         UIDatePicker()
    let formatter =           DateFormatter()
    var dateData =            Date()
    let dated   =             Date()
    var today =               String()
    var afterday =            String()
    var yearlater =           String()
    var counter:Int = 0
    
    var selfAgeCount = Int(); var spouseAgeCount = Int();var fatherAgeCount = Int();var motherAgeCount = Int();var fatherinLawAgeCount = Int();var motherinLawAgeCount = Int();var daughterInlawAgeCount = Int();var soninLawAgeCount = Int();var brotherAgeCount = Int();var sisterAgeCount = Int()
    var grandFatherAgeCount = Int(); var grandMotherAgeCount = Int();var grandSonAgeCount = Int();var grandDaughterAgeCount = Int();var brotherinLawAgeCount = Int();var sisterinLawAgeCount = Int();var nephewAgeCount = Int();var nieceAgeCount = Int();var sonAgeCount = Int();var daughterAgeCount = Int()
    
    var Calculatordata:CalculatorModel?
    
    override func viewWillAppear(_ animated: Bool) {
//        self.CalculatorApi(Tokentaken:"abcHkl7900@8Uyhkj123",ScreenName:"BMICalculator")
        
        self.CalculatordataAPI_POST(token:"abcHkl7900@8Uyhkj123", screenname:"BMICalculator")
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.mainView.isHidden = true
        TopmainContant.constant = -50
      //  self.noteeNsView.constant = 0
        //self.scrollViewHeight.constant = 460
        pickerView = UIPickerView()
        policyTypeTextfield.addPadding(padding: .left(10))
       // policyTypeTextfield.setLeftPaddingPoints(20)
       // policyTypeTextfield.text = gradePickerValues[0]
        policyTypeArray = ["Individual","Multi Individual","Family Floater"]
        self.YoucanselectSixMember.isHidden = true
        self.WouldYoulike.isHidden = true
        self.cornerRadius()
        self.borderWidth()
        self.borderColour()
        self.hiddenViews()
        self.nextBtn.layer.cornerRadius = 14
        self.policySelectView.layer.cornerRadius = 10
        self.policySelectView.layer.borderWidth = 0.5
        self.policySelectView.layer.borderColor = UIColor.black.cgColor
     
        formatter.dateFormat = "dd/MM/yyyy"
        let result = formatter.string(from: dated)
        dateData = formatter.date(from: result)!
        let dateFormatter = DateFormatter()
        dateFormatter.dateFormat = "dd/MM/yyyy"
        self.afterday = dateFormatter.string(from: Date.tomorrow) // Date.tomorrow
        self.today     = dateFormatter.string(from: Date()) //Date()
        self.yearlater = dateFormatter.string(from: Date().yearafter) //
        dateData = formatter.date(from: result)!
        self.SelfDOBTextField.delegate = self
        self.SpouseDOBTextField.delegate = self
        self.mothereDOBTextField.delegate = self
        self.fatherDOBTextField.delegate = self
        self.motherInLawDOBTextField.delegate = self
        self.fatherInLawDOBTextField.delegate = self
        self.daughterInLawDOBTextField.delegate = self
        self.sonInLawDOBTextField.delegate = self
        self.brotherDOBTextField.delegate = self
        self.sisterDOBTextField.delegate = self
        self.grandFatherDOBTextField.delegate = self
        self.grandMotherDOBTextField.delegate = self
        self.grandSonDOBTextField.delegate = self
        self.grandDaughterDOBTextField.delegate = self
        self.brotherInLawDOBTextField.delegate = self
        self.sisterInLawDOBTextField.delegate = self
        self.nephewDOBTextField.delegate = self
        self.nieceDOBTextField.delegate = self
        self.sonDOBTextField.delegate = self
        self.daughterDOBTextField.delegate = self
        self.createdatePickerView()
        self.datePicker.maximumDate = Date()
        
    }
    @objc func donedatePicker(){
        
        let formatter = DateFormatter()
        formatter.dateFormat = "dd/MM/yyyy"
        donePressed()
        self.view.endEditing(true)
    }
    
    @objc func cancelDatePicker(){
        self.view.endEditing(true)
    }
    @objc func donePressed(){
        SelfDOBTextField.text = "\(datePicker.date.dateInYyyyMmDdSs())"
        SpouseDOBTextField.text = "\(datePicker.date.dateInYyyyMmDdSs())"
        mothereDOBTextField.text = "\(datePicker.date.dateInYyyyMmDdSs())"
        fatherDOBTextField.text = "\(datePicker.date.dateInYyyyMmDdSs())"
        motherInLawDOBTextField.text = "\(datePicker.date.dateInYyyyMmDdSs())"
        fatherInLawDOBTextField.text = "\(datePicker.date.dateInYyyyMmDdSs())"
        daughterInLawDOBTextField.text = "\(datePicker.date.dateInYyyyMmDdSs())"
        sonInLawDOBTextField.text = "\(datePicker.date.dateInYyyyMmDdSs())"
        brotherDOBTextField.text = "\(datePicker.date.dateInYyyyMmDdSs())"
        sisterDOBTextField.text = "\(datePicker.date.dateInYyyyMmDdSs())"
        grandFatherDOBTextField.text = "\(datePicker.date.dateInYyyyMmDdSs())"
        grandMotherDOBTextField.text = "\(datePicker.date.dateInYyyyMmDdSs())"
        grandSonDOBTextField.text = "\(datePicker.date.dateInYyyyMmDdSs())"
        grandDaughterDOBTextField.text = "\(datePicker.date.dateInYyyyMmDdSs())"
        brotherInLawDOBTextField.text = "\(datePicker.date.dateInYyyyMmDdSs())"
        sisterInLawDOBTextField.text = "\(datePicker.date.dateInYyyyMmDdSs())"
        nephewDOBTextField.text = "\(datePicker.date.dateInYyyyMmDdSs())"
        nieceDOBTextField.text = "\(datePicker.date.dateInYyyyMmDdSs())"
        sonDOBTextField.text = "\(datePicker.date.dateInYyyyMmDdSs())"
        daughterDOBTextField.text = "\(datePicker.date.dateInYyyyMmDdSs())"
        
    }
    
    func CalculatordataAPI_POST(token:String,screenname:String)
    {
        APICaller.Calculator_API_POST_(TokenNo:token, ScreenName:screenname){ [weak self] calaculatordata3 in

            switch calaculatordata3
            {

            case .success(let calculdataData):

                DispatchQueue.main.async
                {
                  [self] in

                    self?.Calculatordata = calculdataData
                 print("\(calaculatordata3)")

              }

                case .failure(let error) :
                DispatchQueue.main.async
                {

                    print("Error","\(error)")
                    let myError  =  UserDefaults.standard.string(forKey: "APIERROR")

                    return
                }
            }
        }

    }
//    func  CalculatorApi(Tokentaken:String,ScreenName:String)
//    {
//        let url = "http://45.114.143.109:82/AL_Mobile_App.svc/CalculatorScreen"
//           let params = ["TokenNo":Tokentaken,"ScreenName":ScreenName]
//
//            Alamofire.request(url, method:.post,parameters:params).responseJSON{ (response) in
//
//                let result = response.data
//                do{
//                    self.Calculatordata = try JSONDecoder().decode(CalculatorModel.self, from: result!)
//                    print("\(String(describing: self.Calculatordata))")
//
//
//                    }
//
//                catch{
//                print("Error","\(error)")
//                let myError  =  UserDefaults.standard.string(forKey: "APIERROR")
//                    self.alert(message:"\(String(describing: myError))")
//                 return
//
//                }
//            }
//        }
    
    
    
    
 //MARK: - Function for DropDown
    @IBAction func policyTypeBtn_Clicked(_ sender: Any) {
        let dropDown = DropDown()
      dropDown.direction = .bottom
      dropDown.anchorView = (sender as! AnchorView)
      dropDown.dataSource = ["Individual","Multi Individual","Family Floater"]
        dropDown.selectionAction = { [unowned self] (index: Int, item: String) in
            self.policyTypeBtn.setTitle(item, for: .normal)
            self.policyType = String(item)
            if policyType == "Individual"{
                mainView.isHidden = false
                TopmainContant.constant = -50
                self.YoucanselectSixMember.isHidden = true
                self.WouldYoulike.isHidden = true

            }
            else if policyType == "Multi Individual"
            {
                self.mainView.isHidden = false

                self.YoucanselectSixMember.isHidden = false
                self.WouldYoulike.isHidden = false
                TopmainContant.constant = 0

            }
            else if policyType == "Family Floater"{
                self.mainView.isHidden = false

                self.YoucanselectSixMember.isHidden = false
                self.WouldYoulike.isHidden = false
                TopmainContant.constant = 0

                      }
                 else{
                self.mainView.isHidden = false

                 }
        }
        
        dropDown.width = (sender as AnyObject).frame.width
        dropDown.show()
    }

    
    @IBAction func nextBtn_Clicked(sender: UIButton){
        let nextVC = self.storyboard?.instantiateViewController(withIdentifier: "UserDetails_VC") as! UserDetails_VC
        self.navigationController?.pushViewController(nextVC, animated: true)
    }
    
    @IBAction func selfAction(_ sender: UIButton){
        if selfCheckBoxBtn.isSelected {
            selfCheckBoxBtn.setBackgroundImage(UIImage(named: "uncheckImg"), for: .normal)
            self.dobView.isHidden = true
//            self.genderView.isHidden = true
            self.counter -= 1
        }else{
            selfCheckBoxBtn.setBackgroundImage(UIImage(named: "CheckedImage"), for:.normal)
            self.dobView.isHidden = false
//            self.genderView.isHidden = false
            self.counter += 1
        }
        selfCheckBoxBtn.isSelected = !selfCheckBoxBtn.isSelected
    }
    
    @IBAction func spouseAction(_ sender: UIButton){
        if spouseCheckBoxBtn.isSelected {
            spouseCheckBoxBtn.setBackgroundImage(UIImage(named: "uncheckImg"), for: .normal)
            self.SpouseDOBView.isHidden = true
            self.counter -= 1
              }else{
                spouseCheckBoxBtn.setBackgroundImage(UIImage(named: "CheckedImage"), for:.normal)
                self.SpouseDOBView.isHidden = false
                  self.counter += 1
             }
        spouseCheckBoxBtn.isSelected = !spouseCheckBoxBtn.isSelected
    }
    
    @IBAction func motherAction(_ sender: UIButton){
        if motherCheckBoxBtn.isSelected {
            motherCheckBoxBtn.setBackgroundImage(UIImage(named: "uncheckImg"), for: .normal)
            self.mothereDOBView.isHidden = true
            self.counter -= 1

              }else{
                  motherCheckBoxBtn.setBackgroundImage(UIImage(named: "CheckedImage"), for:.normal)
                  self.mothereDOBView.isHidden = false
                  self.counter += 1
                  
             }
        motherCheckBoxBtn.isSelected = !motherCheckBoxBtn.isSelected
    }
    
    @IBAction func fatherAction(_ sender: UIButton){
        if fatherCheckBoxBtn.isSelected {
            fatherCheckBoxBtn.setBackgroundImage(UIImage(named: "uncheckImg"), for: .normal)
            self.fatherDOBView.isHidden = true
            self.counter -= 1
              }else{
                fatherCheckBoxBtn.setBackgroundImage(UIImage(named: "CheckedImage"), for:.normal)
                self.fatherDOBView.isHidden = false
                  self.counter += 1
             }
        fatherCheckBoxBtn.isSelected = !fatherCheckBoxBtn.isSelected
    }
    
    @IBAction func motherinlawAction(_ sender: UIButton){
        if motherinlawCheckBoxBtn.isSelected {
            motherinlawCheckBoxBtn.setBackgroundImage(UIImage(named: "uncheckImg"), for: .normal)
            self.motherInLawDOBView.isHidden = true
    
            self.motherinlawCheckBoxBtn.isUserInteractionEnabled = true
            self.counter -= 1
              }else{
                motherinlawCheckBoxBtn.setBackgroundImage(UIImage(named: "CheckedImage"), for:.normal)
                self.motherInLawDOBView.isHidden = false
                  self.counter += 1

             }
        motherinlawCheckBoxBtn.isSelected = !motherinlawCheckBoxBtn.isSelected
    }
    
    @IBAction func fatherinlawAction(_ sender: UIButton){
        if fatherinlawCheckBoxBtn.isSelected {
            fatherinlawCheckBoxBtn.setBackgroundImage(UIImage(named: "uncheckImg"), for: .normal)
            self.fatherInLawDOBView.isHidden = true
            self.counter -= 1
              }else{
                fatherinlawCheckBoxBtn.setBackgroundImage(UIImage(named: "CheckedImage"), for:.normal)
                self.fatherInLawDOBView.isHidden = false
                  self.counter += 1

             }
        fatherinlawCheckBoxBtn.isSelected = !fatherinlawCheckBoxBtn.isSelected
    }
    
    @IBAction func daughterInLawAction(_ sender: UIButton){
        if daughterinlawCheckBoxBtn.isSelected {
            daughterinlawCheckBoxBtn.setBackgroundImage(UIImage(named: "uncheckImg"), for: .normal)
            self.daughterInLawDOBView.isHidden = true
            self.counter -= 1
              }else{
                daughterinlawCheckBoxBtn.setBackgroundImage(UIImage(named: "CheckedImage"), for:.normal)
                self.daughterInLawDOBView.isHidden = false
                  self.counter += 1

             }
        daughterinlawCheckBoxBtn.isSelected = !daughterinlawCheckBoxBtn.isSelected
    }
    
    @IBAction func soninlawAction(_ sender: UIButton){
        if soninlawCheckBoxBtn.isSelected {
            soninlawCheckBoxBtn.setBackgroundImage(UIImage(named: "uncheckImg"), for: .normal)
            self.sonInLawDOBView.isHidden = true
            self.counter -= 1
              }else{
                  soninlawCheckBoxBtn.setBackgroundImage(UIImage(named: "CheckedImage"), for:.normal)
                self.sonInLawDOBView.isHidden = false
                  self.counter += 1

             }
        soninlawCheckBoxBtn.isSelected = !soninlawCheckBoxBtn.isSelected
    }
    
    @IBAction func brotherAction(_ sender: UIButton){
        if brotherCheckBoxBtn.isSelected {
            brotherCheckBoxBtn.setBackgroundImage(UIImage(named: "uncheckImg"), for: .normal)
            self.brotherDOBView.isHidden = true
            self.counter -= 1
              }else{
                  brotherCheckBoxBtn.setBackgroundImage(UIImage(named: "CheckedImage"), for:.normal)
                self.brotherDOBView.isHidden = false
                  self.counter += 1

             }
        brotherCheckBoxBtn.isSelected = !brotherCheckBoxBtn.isSelected
    }
    
    @IBAction func sisterAction(_ sender: UIButton){
        if sisterCheckBoxImgBtn.isSelected {
            sisterCheckBoxImgBtn.setBackgroundImage(UIImage(named: "uncheckImg"), for: .normal)
            self.sisterDOBView.isHidden = true
            self.counter -= 1
              }else{
                  sisterCheckBoxImgBtn.setBackgroundImage(UIImage(named: "CheckedImage"), for:.normal)
                self.sisterDOBView.isHidden = false
                  self.counter += 1
             }
        sisterCheckBoxImgBtn.isSelected = !sisterCheckBoxImgBtn.isSelected
    }
    
    @IBAction func grandFatherAction(_ sender: UIButton){
        if grandFatherCheckBoxBtn.isSelected {
            grandFatherCheckBoxBtn.setBackgroundImage(UIImage(named: "uncheckImg"), for: .normal)
            self.grandFatherDOBView.isHidden = true
            self.counter -= 1
              }else{
                  grandFatherCheckBoxBtn.setBackgroundImage(UIImage(named: "CheckedImage"), for:.normal)
                self.grandFatherDOBView.isHidden = false
                  self.counter += 1

             }
        grandFatherCheckBoxBtn.isSelected = !grandFatherCheckBoxBtn.isSelected
    }
    
    @IBAction func grandMotherAction(_ sender: UIButton){
        if grandMotherCheckBoxBtn.isSelected {
            grandMotherCheckBoxBtn.setBackgroundImage(UIImage(named: "uncheckImg"), for: .normal)
            self.grandMotherDOBView.isHidden = true
            self.counter -= 1
              }else{
                  grandMotherCheckBoxBtn.setBackgroundImage(UIImage(named: "CheckedImage"), for:.normal)
                self.grandMotherDOBView.isHidden = false
                  self.counter += 1

             }
        grandMotherCheckBoxBtn.isSelected = !grandMotherCheckBoxBtn.isSelected
    }
    
    @IBAction func grandSonAction(_ sender: UIButton){
        if grandSonCheckBoxBtn.isSelected {
            grandSonCheckBoxBtn.setBackgroundImage(UIImage(named: "uncheckImg"), for: .normal)
            self.grandSonDOBView.isHidden = true
            self.counter -= 1
              }else{
                  grandSonCheckBoxBtn.setBackgroundImage(UIImage(named: "CheckedImage"), for:.normal)
                self.grandSonDOBView.isHidden = false
                  self.counter += 1

             }
        grandSonCheckBoxBtn.isSelected = !grandSonCheckBoxBtn.isSelected
    }
    
    @IBAction func garndDaughterAction(_ sender: UIButton){
        if grandDaughterCheckBoxBtn.isSelected {
            grandDaughterCheckBoxBtn.setBackgroundImage(UIImage(named: "uncheckImg"), for: .normal)
            self.grandDaughterDOBView.isHidden = true
            self.counter -= 1
              }else{
                  grandDaughterCheckBoxBtn.setBackgroundImage(UIImage(named: "CheckedImage"), for:.normal)
                self.grandDaughterDOBView.isHidden = false
                  self.counter += 1

             }
        grandDaughterCheckBoxBtn.isSelected = !grandDaughterCheckBoxBtn.isSelected
    }
    
    @IBAction func brotherinLawAction(_ sender: UIButton){
        if brotherinlawCheckBoxBtn.isSelected {
            brotherinlawCheckBoxBtn.setBackgroundImage(UIImage(named: "uncheckImg"), for: .normal)
            self.brotherInLawDOBView.isHidden = true
            self.counter -= 1
              }else{
                  brotherinlawCheckBoxBtn.setBackgroundImage(UIImage(named: "CheckedImage"), for:.normal)
                self.brotherInLawDOBView.isHidden = false
                  self.counter += 1

             }
        brotherinlawCheckBoxBtn.isSelected = !brotherinlawCheckBoxBtn.isSelected
    }
    
    @IBAction func sisterInLawAction(_ sender: UIButton){
        if sisterinlawCheckBoxBtn.isSelected {
            sisterinlawCheckBoxBtn.setBackgroundImage(UIImage(named: "uncheckImg"), for: .normal)
            self.sisterInLawDOBView.isHidden = true
            self.counter -= 1
              }else{
                  sisterinlawCheckBoxBtn.setBackgroundImage(UIImage(named: "CheckedImage"), for:.normal)
                self.sisterInLawDOBView.isHidden = false
                  self.counter += 1

             }
        sisterinlawCheckBoxBtn.isSelected = !sisterinlawCheckBoxBtn.isSelected
    }
    
    @IBAction func nephewAction(_ sender: UIButton){
        if nephewCheckBoxBtn.isSelected {
            nephewCheckBoxBtn.setBackgroundImage(UIImage(named: "uncheckImg"), for: .normal)
            self.nephewDOBView.isHidden = true
            self.counter -= 1
              }else{
                nephewCheckBoxBtn.setBackgroundImage(UIImage(named: "CheckedImage"), for:.normal)
                self.nephewDOBView.isHidden = false
                  self.counter += 1
             }
        nephewCheckBoxBtn.isSelected = !nephewCheckBoxBtn.isSelected
    }
    
    @IBAction func nieceAction(_ sender: UIButton){
        if nieceCheckBoxImgBtn.isSelected {
            nieceCheckBoxImgBtn.setBackgroundImage(UIImage(named: "uncheckImg"), for: .normal)
            self.nieceDOBView.isHidden = true
            self.counter -= 1
              }else{
                nieceCheckBoxImgBtn.setBackgroundImage(UIImage(named: "CheckedImage"), for:.normal)
                self.nieceDOBView.isHidden = false
                  self.counter += 1
             }
        nieceCheckBoxImgBtn.isSelected = !nieceCheckBoxImgBtn.isSelected
    }
    
    @IBAction func sonAction(_ sender: UIButton){
        if sonCheckBoxImgBtn.isSelected {
            sonCheckBoxImgBtn.setBackgroundImage(UIImage(named: "uncheckImg"), for: .normal)
            self.sonDOBView.isHidden = true
            self.counter -= 1

              }else{
                  sonCheckBoxImgBtn.setBackgroundImage(UIImage(named: "CheckedImage"), for:.normal)
                self.sonDOBView.isHidden = false
                  self.counter += 1

             }
        sonCheckBoxImgBtn.isSelected = !sonCheckBoxImgBtn.isSelected
    }
    
    @IBAction func daughterAction(_ sender: UIButton){
        if daughterCheckBoxBtn.isSelected {
            daughterCheckBoxBtn.setBackgroundImage(UIImage(named: "uncheckImg"), for: .normal)
            self.daughterDOBView.isHidden = true
            self.counter -= 1

              }else{
                daughterCheckBoxBtn.setBackgroundImage(UIImage(named: "CheckedImage"), for:.normal)
                self.daughterDOBView.isHidden = false
                  self.counter += 1

             }
        daughterCheckBoxBtn.isSelected = !daughterCheckBoxBtn.isSelected
    }
    @IBAction func NextContinueBtn(_ sender: UIButton) {
        if counter == 2 && policyType == "Individual"
        {
            self.alert(message: "You can Select Only 1 Member!")
        }
        else if counter == 7 && policyType == "Multi Individual"
        {
            self.alert(message: "You can Select Only 6 Member!")
        }
        else if SelfDOBTextField.text == ""{
            
            self.alert(message: "Enter Your DOB !")
            
        }  else if SpouseDOBTextField.text == ""{
            
            self.alert(message: "Enter Your DOB !")
            
        }
        else if mothereDOBTextField.text == ""{
            
            self.alert(message: "Enter Your DOB !")
            
        }
        else if fatherDOBTextField.text == ""{
            
            self.alert(message: "Enter Your DOB !")
            
        }
        else if motherInLawDOBTextField.text == ""{
            
            self.alert(message: "Enter Your DOB !")
            
        }
        else if fatherInLawDOBTextField.text == ""{
            
            self.alert(message: "Enter Your DOB !")
            
        }
        else if daughterInLawDOBTextField.text == ""{
            
            self.alert(message: "Enter Your DOB !")
            
        }
        else if sonInLawDOBTextField.text == ""{
            
            self.alert(message: "Enter Your DOB !")
            
        }
        else if brotherDOBTextField.text == ""{
            
            self.alert(message: "Enter Your DOB !")
            
        }
        else if sisterDOBTextField.text == ""{
            
            self.alert(message: "Enter Your DOB !")
            
        }
        else if grandFatherDOBTextField.text == ""{
            
            self.alert(message: "Enter Your DOB !")
            
        }
        else if grandMotherDOBTextField.text == ""{
            
            self.alert(message: "Enter Your DOB !")
            
        }
        else if grandSonDOBTextField.text == ""{
            
            self.alert(message: "Enter Your DOB !")
            
        }
        else if grandDaughterDOBTextField.text == ""{
            
            self.alert(message: "Enter Your DOB !")
            
        }
        else if brotherInLawDOBTextField.text == ""{
            
            self.alert(message: "Enter Your DOB !")
            
        }
        else if sisterInLawDOBTextField.text == ""{
            
            self.alert(message: "Enter Your DOB !")
            
        }
        else if nephewDOBTextField.text == ""{
            
            self.alert(message: "Enter Your DOB !")
            
        }   else if nieceDOBTextField.text == ""{
            
            self.alert(message: "Enter Your DOB !")
            
        }   else if sonDOBTextField.text == ""{
            
            self.alert(message: "Enter Your DOB !")
            
        }   else if daughterDOBTextField.text == ""{
            
            self.alert(message: "Enter Your DOB !")
            
        }else{
    
            print("Next Btn Tapped")
        }
        
        
    }
    
    
}

    extension UITextField {

            enum PaddingSpace {
                case left(CGFloat)
                case right(CGFloat)
                case equalSpacing(CGFloat)
            }

            func addPadding(padding: PaddingSpace) {

                self.leftViewMode = .always
                self.layer.masksToBounds = true

                switch padding {

                case .left(let spacing):
                    let leftPaddingView = UIView(frame: CGRect(x: 0, y: 0, width: spacing, height: self.frame.height))
                    self.leftView = leftPaddingView
                    self.leftViewMode = .always

                case .right(let spacing):
                    let rightPaddingView = UIView(frame: CGRect(x: 0, y: 0, width: spacing, height: self.frame.height))
                    self.rightView = rightPaddingView
                    self.rightViewMode = .always

                case .equalSpacing(let spacing):
                    let equalPaddingView = UIView(frame: CGRect(x: 0, y: 0, width: spacing, height: self.frame.height))
                    // left
                    self.leftView = equalPaddingView
                    self.leftViewMode = .always
                    // right
                    self.rightView = equalPaddingView
                    self.rightViewMode = .always
                }
            }
        }

extension PolicyType_VC{
    func cornerRadius()
    {
  // Mark:- MainView Corner Radius ----
        self.policySelectView.layer.cornerRadius = 10
        self.selfView.layer.cornerRadius = 6
        self.spouseView.layer.cornerRadius = 6
        self.motherView.layer.cornerRadius = 6
        self.fatherView.layer.cornerRadius = 6
        self.motherInLawView.layer.cornerRadius = 6
        self.fatherInLawView.layer.cornerRadius = 6
        self.daughterInLawView.layer.cornerRadius = 6
        self.sonInLowView.layer.cornerRadius = 6
        self.brotherView.layer.cornerRadius = 6
        self.sisterView.layer.cornerRadius = 6
        self.grandFatherView.layer.cornerRadius = 6
        self.grandMotherView.layer.cornerRadius = 6
        self.grandSonView.layer.cornerRadius = 6
        self.grandDaughterView.layer.cornerRadius = 6
        self.brotherInLawView.layer.cornerRadius = 6
        self.sisterInLawView.layer.cornerRadius = 6
        self.nephewView.layer.cornerRadius = 6
        self.nieceView.layer.cornerRadius = 6
        self.sonView.layer.cornerRadius = 6
        self.daughterView.layer.cornerRadius = 6
        
  // Mark:- DOB View Corner Radius ---------
        self.dobView.layer.cornerRadius = 6
        self.SpouseDOBView.layer.cornerRadius = 6
        self.mothereDOBView.layer.cornerRadius = 6
        self.fatherDOBView.layer.cornerRadius = 6
        self.motherInLawDOBView.layer.cornerRadius = 6
        self.fatherInLawDOBView.layer.cornerRadius = 6
        self.daughterInLawView.layer.cornerRadius = 6
        self.sonInLawDOBView.layer.cornerRadius = 6
        self.brotherDOBView.layer.cornerRadius = 6
        self.sisterDOBView.layer.cornerRadius = 6
        self.grandFatherDOBView.layer.cornerRadius = 6
        self.grandMotherDOBView.layer.cornerRadius = 6
        self.grandSonDOBView.layer.cornerRadius = 6
        self.grandDaughterDOBView.layer.cornerRadius = 6
        self.brotherInLawDOBView.layer.cornerRadius = 6
        self.sisterInLawDOBView.layer.cornerRadius = 6
        self.nephewDOBView.layer.cornerRadius = 6
        self.nieceDOBView.layer.cornerRadius = 6
        self.sonDOBView.layer.cornerRadius = 6
        self.daughterDOBView.layer.cornerRadius = 6
        

        
  // Mark:- Check View Corner Radius ----
//        self.checkView.layer.cornerRadius = 4
//        self.SpouseCheckView.layer.cornerRadius = 4
//        self.mothereCheckView.layer.cornerRadius = 4
//        self.fatherCheckView.layer.cornerRadius = 4
//        self.motherInLawCheckView.layer.cornerRadius = 4
//        self.fatherInLawCheckView.layer.cornerRadius = 4
//        self.daughterInLawCheckView.layer.cornerRadius = 4
//        self.sonInLawCheckView.layer.cornerRadius = 4
//        self.brotherCheckView.layer.cornerRadius = 4
//        self.sisterCheckView.layer.cornerRadius = 4
//        self.grandFatherCheckView.layer.cornerRadius = 4
//        self.grandMotherCheckView.layer.cornerRadius = 4
//        self.grandSonCheckView.layer.cornerRadius = 4
//        self.grandDaughterCheckView.layer.cornerRadius = 4
//        self.brotherInLawCheckView.layer.cornerRadius = 4
//        self.sisterInLawCheckView.layer.cornerRadius = 4
//        self.nephewCheckView.layer.cornerRadius = 4
//        self.nieceCheckView.layer.cornerRadius = 4
//        self.sonCheckView.layer.cornerRadius = 4
//        self.daughterCheckView.layer.cornerRadius = 4
        
    }
    
    func borderWidth(){
    // Mark:- Main View corner Radius -------
        self.policySelectView.layer.borderWidth = 0.5
        self.selfView.layer.borderWidth = 0.5
        self.spouseView.layer.borderWidth = 0.5
        self.motherView.layer.borderWidth = 0.5
        self.fatherView.layer.borderWidth = 0.5
        self.motherInLawView.layer.borderWidth = 0.5
        self.fatherInLawView.layer.borderWidth = 0.5
        self.daughterInLawView.layer.borderWidth = 0.5
        self.sonInLowView.layer.borderWidth = 0.5
        self.brotherView.layer.borderWidth = 0.5
        self.sisterView.layer.borderWidth = 0.5
        self.grandFatherView.layer.borderWidth = 0.5
        self.grandMotherView.layer.borderWidth = 0.5
        self.grandSonView.layer.borderWidth = 0.5
        self.grandDaughterView.layer.borderWidth = 0.5
        self.brotherInLawView.layer.borderWidth = 0.5
        self.sisterInLawView.layer.borderWidth = 0.5
        self.nephewView.layer.borderWidth = 0.5
        self.nieceView.layer.borderWidth = 0.5
        self.sonView.layer.borderWidth = 0.5
        self.daughterView.layer.borderWidth = 0.5
        
  // Mark:- DOB View BorderWidth ---------
        self.dobView.layer.borderWidth = 0.5
        self.SpouseDOBView.layer.borderWidth = 0.5
        self.mothereDOBView.layer.borderWidth = 0.5
        self.fatherDOBView.layer.borderWidth = 0.5
        self.motherInLawDOBView.layer.borderWidth = 0.5
        self.fatherInLawDOBView.layer.borderWidth = 0.5
        self.daughterInLawView.layer.borderWidth = 0.5
        self.sonInLawDOBView.layer.borderWidth = 0.5
        self.brotherDOBView.layer.borderWidth = 0.5
        self.sisterDOBView.layer.borderWidth = 0.5
        self.grandFatherDOBView.layer.borderWidth = 0.5
        self.grandMotherDOBView.layer.borderWidth = 0.5
        self.grandSonDOBView.layer.borderWidth = 0.5
        self.grandDaughterDOBView.layer.borderWidth = 0.5
        self.brotherInLawDOBView.layer.borderWidth = 0.5
        self.sisterInLawDOBView.layer.borderWidth = 0.5
        self.nephewDOBView.layer.borderWidth = 0.5
        self.nieceDOBView.layer.borderWidth = 0.5
        self.sonDOBView.layer.borderWidth = 0.5
        self.daughterDOBView.layer.borderWidth = 0.5
        

    }
    
    func borderColour(){
  // Mark:- Main View Border Colour --------
        self.policySelectView.layer.borderColor = UIColor.black.cgColor
        self.selfView.layer.borderColor = UIColor.black.cgColor
        self.spouseView.layer.borderColor = UIColor.black.cgColor
        self.motherView.layer.borderColor = UIColor.black.cgColor
        self.fatherView.layer.borderColor = UIColor.black.cgColor
        self.motherInLawView.layer.borderColor = UIColor.black.cgColor
        self.fatherInLawView.layer.borderColor = UIColor.black.cgColor
        self.daughterInLawView.layer.borderColor = UIColor.black.cgColor
        self.sonInLowView.layer.borderColor = UIColor.black.cgColor
        self.brotherView.layer.borderColor = UIColor.black.cgColor
        self.sisterView.layer.borderColor = UIColor.black.cgColor
        self.grandFatherView.layer.borderColor = UIColor.black.cgColor
        self.grandMotherView.layer.borderColor = UIColor.black.cgColor
        self.grandSonView.layer.borderColor = UIColor.black.cgColor
        self.grandDaughterView.layer.borderColor = UIColor.black.cgColor
        self.brotherInLawView.layer.borderColor = UIColor.black.cgColor
        self.sisterInLawView.layer.borderColor = UIColor.black.cgColor
        self.nephewView.layer.borderColor = UIColor.black.cgColor
        self.nieceView.layer.borderColor = UIColor.black.cgColor
        self.sonView.layer.borderColor = UIColor.black.cgColor
        self.daughterView.layer.borderColor = UIColor.black.cgColor
        
  // Mark:- DOB View BorderColour --------
        self.dobView.layer.borderColor = UIColor.black.cgColor
        self.SpouseDOBView.layer.borderColor = UIColor.black.cgColor
        self.mothereDOBView.layer.borderColor = UIColor.black.cgColor
        self.fatherDOBView.layer.borderColor = UIColor.black.cgColor
        self.motherInLawDOBView.layer.borderColor = UIColor.black.cgColor
        self.fatherInLawDOBView.layer.borderColor = UIColor.black.cgColor
        self.daughterInLawDOBView.layer.borderColor = UIColor.black.cgColor
        self.sonInLawDOBView.layer.borderColor = UIColor.black.cgColor
        self.brotherDOBView.layer.borderColor = UIColor.black.cgColor
        self.sisterDOBView.layer.borderColor = UIColor.black.cgColor
        self.grandFatherDOBView.layer.borderColor = UIColor.black.cgColor
        self.grandMotherDOBView.layer.borderColor = UIColor.black.cgColor
        self.grandSonDOBView.layer.borderColor = UIColor.black.cgColor
        self.grandDaughterView.layer.borderColor = UIColor.black.cgColor
        self.brotherInLawDOBView.layer.borderColor = UIColor.black.cgColor
        self.sisterInLawDOBView.layer.borderColor = UIColor.black.cgColor
        self.nephewDOBView.layer.borderColor = UIColor.black.cgColor
        self.nieceDOBView.layer.borderColor = UIColor.black.cgColor
        self.sonDOBView.layer.borderColor = UIColor.black.cgColor
        self.daughterDOBView.layer.borderColor = UIColor.black.cgColor
        self.SpouseDOBView.layer.borderColor = UIColor.black.cgColor
        self.mothereDOBView.layer.borderColor = UIColor.black.cgColor
        

        
  // Mark:- Check View BorderColour --------
//        self.checkView.layer.borderColor = UIColor.black.cgColor
//        self.SpouseCheckView.layer.borderColor = UIColor.black.cgColor
//        self.mothereCheckView.layer.borderColor = UIColor.black.cgColor
//        self.fatherCheckView.layer.borderColor = UIColor.black.cgColor
//        self.motherInLawCheckView.layer.borderColor = UIColor.black.cgColor
//        self.fatherInLawCheckView.layer.borderColor = UIColor.black.cgColor
//        self.daughterInLawCheckView.layer.borderColor = UIColor.black.cgColor
//        self.sonInLawCheckView.layer.borderColor = UIColor.black.cgColor
//        self.brotherCheckView.layer.borderColor = UIColor.black.cgColor
//        self.sisterCheckView.layer.borderColor = UIColor.black.cgColor
//        self.grandFatherCheckView.layer.borderColor = UIColor.black.cgColor
//        self.grandMotherCheckView.layer.borderColor = UIColor.black.cgColor
//        self.grandSonCheckView.layer.borderColor = UIColor.black.cgColor
//        self.grandDaughterCheckView.layer.borderColor = UIColor.black.cgColor
//        self.brotherInLawCheckView.layer.borderColor = UIColor.black.cgColor
//        self.sisterInLawCheckView.layer.borderColor = UIColor.black.cgColor
//        self.nephewCheckView.layer.borderColor = UIColor.black.cgColor
//        self.nieceCheckView.layer.borderColor = UIColor.black.cgColor
//        self.sonCheckView.layer.borderColor = UIColor.black.cgColor
//        self.daughterCheckView.layer.borderColor = UIColor.black.cgColor
//        self.SpouseCheckView.layer.borderColor = UIColor.black.cgColor
//        self.mothereCheckView.layer.borderColor = UIColor.black.cgColor
        
    }
    func hiddenViews(){
        self.dobView.isHidden = true
        self.SpouseDOBView.isHidden = true
        self.mothereDOBView.isHidden = true
        self.fatherDOBView.isHidden = true
        self.motherInLawDOBView.isHidden = true
        self.fatherInLawDOBView.isHidden = true
        self.daughterInLawView.isHidden = true
        self.sonInLawDOBView.isHidden = true
        self.brotherDOBView.isHidden = true
        self.sisterDOBView.isHidden = true
        self.grandFatherDOBView.isHidden = true
        self.grandMotherDOBView.isHidden = true
        self.grandSonDOBView.isHidden = true
        self.grandDaughterDOBView.isHidden = true
        self.brotherInLawDOBView.isHidden = true
        self.sisterInLawDOBView.isHidden = true
        self.nephewDOBView.isHidden = true
        self.nieceDOBView.isHidden = true
        self.sonDOBView.isHidden = true
        self.daughterDOBView.isHidden = true

    }
}

//MARK: - extension for the next date for the apis
    extension Date {
    static var tomorrow:  Date { return Date().dayAfter }
    var dayAfter: Date {
        return Calendar.current.date(byAdding: .day, value: 1, to: noonn)!
    }
    var noonn: Date {
        return Calendar.current.date(bySettingHour: 12, minute: 0, second: 0, of: self)!
    }
    var yearafter: Date {
        return Calendar.current.date(byAdding: .year, value: 1, to: noonn)!
    }
    var yearafterr: Date {
            return Calendar.current.date(byAdding: .year, value: 2, to: noonn)!
        }
    var yearafterThree: Date {
                return Calendar.current.date(byAdding: .year, value: 3, to: noonn)!
            }
        var yearafterFive: Date {
                    return Calendar.current.date(byAdding: .year, value: 5, to: noonn)!
                }
        var backMonth: Date
        {
                    return Calendar.current.date(byAdding: .month, value: -3, to: noonn)!
                }
    var isLastDayOfyear: Bool
        {
        return dayAfter.yearafter != yearafter
        return dayAfter.yearafterr != yearafterr
        return dayAfter.yearafterThree != yearafterThree
        return dayAfter.yearafterFive != yearafterFive
        return dayAfter.backMonth != backMonth

    }
    }

//MARK: - extension for alert
extension UIViewController
{
  func alert(message: String, title: String = "")
    {
    let alertController = UIAlertController(title: title, message: message, preferredStyle: .alert)
    let OKAction = UIAlertAction(title: "OK", style: .default, handler: nil)
    alertController.addAction(OKAction)
    self.present(alertController, animated: true, completion: nil)
       }
       }

extension Date {

    //An integer representation of age from the date object (read-only).
    var age: Int
    {
        get
        {
            let now = Date()
            let calendar = Calendar.current

            let ageComponents = calendar.dateComponents([.year,.month,.day], from: self, to: now)
            let age = ageComponents.year!
            return age
        }
    }
    init(year: Int, month: Int, day: Int)
    {
        var dc = DateComponents()
        dc.year = year
        dc.month = month
        dc.day = day

        var calendar = Calendar(identifier: .gregorian)
        calendar.timeZone = TimeZone(secondsFromGMT: 0)!
        if let date = calendar.date(from: dc) {
            self.init(timeInterval: 0, since: date)
        }
        else
        {
            fatalError("Date component values were invalid.")
        }
    }

}

//MARK: -  extension for the textfield
extension PolicyType_VC:UITextFieldDelegate{
    //MARK: - func for date picker
    func createdatePickerView() {
        var dateFormatter = DateFormatter()
        if #available(iOS 13.4, *) {
            datePicker.preferredDatePickerStyle = .wheels
            let toolbar = UIToolbar();
            toolbar.sizeToFit()
            let doneButton = UIBarButtonItem(title: "Done", style: .plain, target: self, action: #selector(donePressed));
            let cancelButton = UIBarButtonItem(title: "Done", style: .plain, target: self, action: #selector(cancelDatePicker));
            toolbar.setItems([cancelButton], animated: false)
            
            SelfDOBTextField.inputAccessoryView = toolbar
            SelfDOBTextField.inputView = datePicker
            SpouseDOBTextField.inputAccessoryView = toolbar
            SpouseDOBTextField.inputView = datePicker
            mothereDOBTextField.inputAccessoryView = toolbar
            mothereDOBTextField.inputView = datePicker
            fatherDOBTextField.inputAccessoryView = toolbar
            fatherDOBTextField.inputView = datePicker
            motherInLawDOBTextField.inputAccessoryView = toolbar
            motherInLawDOBTextField.inputView = datePicker
            fatherInLawDOBTextField.inputAccessoryView = toolbar
            fatherInLawDOBTextField.inputView = datePicker
            daughterInLawDOBTextField.inputAccessoryView = toolbar
            daughterInLawDOBTextField.inputView = datePicker
            sonInLawDOBTextField.inputAccessoryView = toolbar
            sonInLawDOBTextField.inputView = datePicker
            brotherDOBTextField.inputAccessoryView = toolbar
            brotherDOBTextField.inputView = datePicker
            sisterDOBTextField.inputAccessoryView = toolbar
            sisterDOBTextField.inputView = datePicker
            grandFatherDOBTextField.inputAccessoryView = toolbar
            grandFatherDOBTextField.inputView = datePicker
            grandMotherDOBTextField.inputAccessoryView = toolbar
            grandMotherDOBTextField.inputView = datePicker
            grandSonDOBTextField.inputAccessoryView = toolbar
            grandSonDOBTextField.inputView = datePicker
            grandDaughterDOBTextField.inputAccessoryView = toolbar
            grandDaughterDOBTextField.inputView = datePicker
            brotherInLawDOBTextField.inputAccessoryView = toolbar
            brotherInLawDOBTextField.inputView = datePicker
            sisterInLawDOBTextField.inputAccessoryView = toolbar
            sisterInLawDOBTextField.inputView = datePicker
            nephewDOBTextField.inputAccessoryView = toolbar
            nephewDOBTextField.inputView = datePicker
            nieceDOBTextField.inputAccessoryView = toolbar
            nieceDOBTextField.inputView = datePicker
            sonDOBTextField.inputAccessoryView = toolbar
            sonDOBTextField.inputView = datePicker
            daughterDOBTextField.inputAccessoryView = toolbar
            daughterDOBTextField.inputView = datePicker
        } else {
        }
        datePicker.datePickerMode = .date
        self.SelfDOBTextField.inputView = datePicker
        self.SpouseDOBTextField.inputView = datePicker
        self.mothereDOBTextField.inputView = datePicker
        self.fatherDOBTextField.inputView = datePicker
        self.motherInLawDOBTextField.inputView = datePicker
        self.fatherInLawDOBTextField.inputView = datePicker
        self.daughterInLawDOBTextField.inputView = datePicker
        self.sonInLawDOBTextField.inputView = datePicker
        self.brotherDOBTextField.inputView = datePicker
        self.sisterDOBTextField.inputView = datePicker
        self.grandFatherDOBTextField.inputView = datePicker
        self.grandMotherDOBTextField.inputView = datePicker
        self.grandSonDOBTextField.inputView = datePicker
        self.grandDaughterDOBTextField.inputView = datePicker
        self.brotherInLawDOBTextField.inputView = datePicker
        self.sisterInLawDOBTextField.inputView = datePicker
        self.nephewDOBTextField.inputView = datePicker
        self.nieceDOBTextField.inputView = datePicker
        self.sonDOBTextField.inputView = datePicker
        self.daughterDOBTextField.inputView = datePicker
    }
    
//    @objc func donePressed(){
//        SelfDOBTextField.text = "\(datePicker.date.dateInYyyyMmDdSs())"
//        SpouseDOBTextField.text = "\(datePicker.date.dateInYyyyMmDdSs())"
//        mothereDOBTextField.text = "\(datePicker.date.dateInYyyyMmDdSs())"
//        fatherDOBTextField.text = "\(datePicker.date.dateInYyyyMmDdSs())"
//        motherInLawDOBTextField.text = "\(datePicker.date.dateInYyyyMmDdSs())"
//        fatherInLawDOBTextField.text = "\(datePicker.date.dateInYyyyMmDdSs())"
//        daughterInLawDOBTextField.text = "\(datePicker.date.dateInYyyyMmDdSs())"
//        sonInLawDOBTextField.text = "\(datePicker.date.dateInYyyyMmDdSs())"
//        brotherDOBTextField.text = "\(datePicker.date.dateInYyyyMmDdSs())"
//        sisterDOBTextField.text = "\(datePicker.date.dateInYyyyMmDdSs())"
//        grandFatherDOBTextField.text = "\(datePicker.date.dateInYyyyMmDdSs())"
//        grandMotherDOBTextField.text = "\(datePicker.date.dateInYyyyMmDdSs())"
//        grandSonDOBTextField.text = "\(datePicker.date.dateInYyyyMmDdSs())"
//        grandDaughterDOBTextField.text = "\(datePicker.date.dateInYyyyMmDdSs())"
//        brotherInLawDOBTextField.text = "\(datePicker.date.dateInYyyyMmDdSs())"
//        sisterInLawDOBTextField.text = "\(datePicker.date.dateInYyyyMmDdSs())"
//        nephewDOBTextField.text = "\(datePicker.date.dateInYyyyMmDdSs())"
//        nieceDOBTextField.text = "\(datePicker.date.dateInYyyyMmDdSs())"
//        sonDOBTextField.text = "\(datePicker.date.dateInYyyyMmDdSs())"
//        daughterDOBTextField.text = "\(datePicker.date.dateInYyyyMmDdSs())"
//
//    }
    func textFieldDidEndEditing(_ textField: UITextField)
    {
        if textField == SelfDOBTextField {
            SelfDOBTextField.text = "\(datePicker.date.dateInYyyyMmDdSs())"
            let selectDate = datePicker.date.dateInYyyyMmDdSs()
            let formetter = DateFormatter()
            formetter.locale = Locale(identifier: "en_US_POSIX")
            formatter.dateFormat = "dd/MM/YYYY"
            let date = formatter.date(from: selectDate)
            let datee =   date
            self.selfAgeCount = datee!.age
      
            self.SelfDOBTextField.text = "".appending(String(selectDate))
            print(self.selfAgeCount)
            if self.selfAgeCount < 18{
                alert(message: "Age must be 18 year to 75 year", title: "Message")
                self.SelfDOBTextField.text?.removeAll()
            }else if self.selfAgeCount > 75{
                alert(message: "Age must be 18 year to 75 year", title: "Message")
                self.SelfDOBTextField.text?.removeAll()
            }
        }else if textField == SpouseDOBTextField{
            SpouseDOBTextField.text = "\(datePicker.date.dateInYyyyMmDdSs())"
                let selectDatee = datePicker.date.dateInYyyyMmDdSs()
                let formetter = DateFormatter()
                formetter.locale = Locale(identifier: "en_US_POSIX")
                formatter.dateFormat = "dd/MM/YYYY"
                let date = formatter.date(from: selectDatee)
                let datee =   date
                self.spouseAgeCount = datee!.age
   
                self.SpouseDOBTextField.text = "".appending(String(selectDatee))
                print(self.spouseAgeCount)
                if self.spouseAgeCount < 18{
                    alert(message: "Spouse Age must be 18 year to 75 year", title: "Message")
                    self.SpouseDOBTextField.text?.removeAll()
                }else if self.spouseAgeCount > 75{
                    alert(message: "Spouse Age must be 18 year to 75 year", title: "Message")
                    self.SpouseDOBTextField.text?.removeAll()
                }
        }else if textField == mothereDOBTextField{
                mothereDOBTextField.text = "\(datePicker.date.dateInYyyyMmDdSs())"
                let selectDatee2 = datePicker.date.dateInYyyyMmDdSs()
                let formetter = DateFormatter()
                formetter.locale = Locale(identifier: "en_US_POSIX")
                formatter.dateFormat = "dd/MM/YYYY"
                let date = formatter.date(from: selectDatee2)
                let datee =   date
                self.motherAgeCount = datee!.age

                self.mothereDOBTextField.text = "".appending(String(selectDatee2))
                print(self.motherAgeCount)
                if self.motherAgeCount < 41{
                    alert(message: "Mother Age must be 41 year to 75 year", title: "Message")
                    self.mothereDOBTextField.text?.removeAll()
                }else if self.motherAgeCount > 75{
                    alert(message: "Mother Age must be 41 year to 75 year", title: "Message")
                    self.mothereDOBTextField.text?.removeAll()
                }
            }else if textField == fatherDOBTextField{
                fatherDOBTextField.text = "\(datePicker.date.dateInYyyyMmDdSs())"
                let selectDateeee23 = datePicker.date.dateInYyyyMmDdSs()
                let formetter = DateFormatter()
                formetter.locale = Locale(identifier: "en_US_POSIX")
                formatter.dateFormat = "dd/MM/YYYY"
                let date = formatter.date(from: selectDateeee23)
                let datee =   date
                self.fatherAgeCount = datee!.age

                self.fatherDOBTextField.text = "".appending(String(selectDateeee23))
                print(self.fatherAgeCount)
                if self.fatherAgeCount < 41{
                    alert(message: "Father Age must be 41 year to 75 year", title: "Message")
                    self.fatherDOBTextField.text?.removeAll()
                }else if self.fatherAgeCount > 75{
                    alert(message: "Father Age must be 41 year to 75 year", title: "Message")
                    self.fatherDOBTextField.text?.removeAll()
                }
            }else if textField == motherInLawDOBTextField{
                motherInLawDOBTextField.text = "\(datePicker.date.dateInYyyyMmDdSs())"
                let selectDateeeee12 = datePicker.date.dateInYyyyMmDdSs()
                let formetter = DateFormatter()
                formetter.locale = Locale(identifier: "en_US_POSIX")
                formatter.dateFormat = "dd/MM/YYYY"
                let date = formatter.date(from: selectDateeeee12)
                let datee =   date
                self.motherinLawAgeCount = datee!.age
             
                self.motherInLawDOBTextField.text = "".appending(String(selectDateeeee12))
                print(self.motherinLawAgeCount)
                if self.motherinLawAgeCount < 41{
                    alert(message: "Mother in Law Age must be 41 year to 75 year", title: "Message")
                    self.motherInLawDOBTextField.text?.removeAll()
                }else  if self.motherinLawAgeCount > 75{
                    alert(message: "Mother in Law Age must be 41 year to 75 year", title: "Message")
                    self.motherInLawDOBTextField.text?.removeAll()
                }
            }else if textField == fatherInLawDOBTextField{
                fatherInLawDOBTextField.text = "\(datePicker.date.dateInYyyyMmDdSs())"
                let selectDateeeee12 = datePicker.date.dateInYyyyMmDdSs()
                let formetter = DateFormatter()
                formetter.locale = Locale(identifier: "en_US_POSIX")
                formatter.dateFormat = "dd/MM/YYYY"
                let date = formatter.date(from: selectDateeeee12)
                let datee =   date
                self.fatherinLawAgeCount = datee!.age
        
                self.fatherInLawDOBTextField.text = "".appending(String(selectDateeeee12))
                print(self.fatherinLawAgeCount)
                if self.fatherinLawAgeCount < 41{
                    alert(message: "Father in Law Age must be 41 year to 75 year", title: "Message")
                    self.fatherInLawDOBTextField.text?.removeAll()
                }else  if self.fatherinLawAgeCount > 75{
                    alert(message: "Father in Law Age must be 41 year to 75 year", title: "Message")
                    self.fatherInLawDOBTextField.text?.removeAll()
                }
            }else if textField == daughterInLawDOBTextField{
                daughterInLawDOBTextField.text = "\(datePicker.date.dateInYyyyMmDdSs())"
                let selectDateeeee6 = datePicker.date.dateInYyyyMmDdSs()
                let formetter = DateFormatter()
                formetter.locale = Locale(identifier: "en_US_POSIX")
                formatter.dateFormat = "dd/MM/YYYY"
                let date = formatter.date(from: selectDateeeee6)
                let datee =   date
                self.daughterInlawAgeCount = datee!.age

                self.daughterInLawDOBTextField.text = "".appending(String(selectDateeeee6))
                print(self.daughterInlawAgeCount)
                if self.daughterInlawAgeCount < 18{
                    alert(message: "Daughter in Law Age must be 18 year to 75 year", title: "Message")
                    self.daughterInLawDOBTextField.text?.removeAll()
                }else  if self.daughterInlawAgeCount > 75{
                    alert(message: "Daughter in Law Age must be 18 year to 75 year", title: "Message")
                    self.daughterInLawDOBTextField.text?.removeAll()
                }
            }else if textField == sonInLawDOBTextField{
                sonInLawDOBTextField.text = "\(datePicker.date.dateInYyyyMmDdSs())"
                let selectDateeeee21 = datePicker.date.dateInYyyyMmDdSs()
                let formetter = DateFormatter()
                formetter.locale = Locale(identifier: "en_US_POSIX")
                formatter.dateFormat = "dd/MM/YYYY"
                let date = formatter.date(from: selectDateeeee21)
                let datee =   date
                self.soninLawAgeCount = datee!.age
      
                self.sonInLawDOBTextField.text = "".appending(String(selectDateeeee21))
                print(self.soninLawAgeCount)
                if self.soninLawAgeCount < 18{
                    alert(message: "Son in Law Age must be 18 year to 75 year", title: "Message")
                    self.sonInLawDOBTextField.text?.removeAll()
                }else  if self.soninLawAgeCount > 75{
                    alert(message: "Son in Law Age must be 18 year to 75 year", title: "Message")
                    self.sonInLawDOBTextField.text?.removeAll()
                }
            }else if textField == brotherDOBTextField{
                brotherDOBTextField.text = "\(datePicker.date.dateInYyyyMmDdSs())"
                let selectDateeeee0 = datePicker.date.dateInYyyyMmDdSs()
                let formetter = DateFormatter()
                formetter.locale = Locale(identifier: "en_US_POSIX")
                formatter.dateFormat = "dd/MM/YYYY"
                let date = formatter.date(from: selectDateeeee0)
                let datee =   date
                self.brotherAgeCount = datee!.age

                self.brotherDOBTextField.text = "".appending(String(selectDateeeee0))
                print(self.brotherAgeCount)
                if self.brotherAgeCount < 18{
                    alert(message: "Brother Age must be 18 year to 75 year", title: "Message")
                    self.brotherDOBTextField.text?.removeAll()
                }else  if self.brotherAgeCount > 75{
                    alert(message: "Brother Age must be 18 year to 75 year", title: "Message")
                    self.brotherDOBTextField.text?.removeAll()
                }
            }else if textField == sisterDOBTextField{
                sisterDOBTextField.text = "\(datePicker.date.dateInYyyyMmDdSs())"
                let selectDateeeee45 = datePicker.date.dateInYyyyMmDdSs()
                let formetter = DateFormatter()
                formetter.locale = Locale(identifier: "en_US_POSIX")
                formatter.dateFormat = "dd/MM/YYYY"
                let date = formatter.date(from: selectDateeeee45)
                let datee =   date
                self.sisterAgeCount = datee!.age
       
                self.sisterDOBTextField.text = "".appending(String(selectDateeeee45))
                print(self.sisterAgeCount)
                if self.sisterAgeCount < 18{
                    alert(message: "Sister Age must be 18 year to 75 year", title: "Message")
                    self.sisterDOBTextField.text?.removeAll()
                }else  if self.sisterAgeCount > 75{
                    alert(message: "Sister Age must be 18 year to 75 year", title: "Message")
                    self.sisterDOBTextField.text?.removeAll()
                }
            }else if textField == grandFatherDOBTextField{
                grandFatherDOBTextField.text = "\(datePicker.date.dateInYyyyMmDdSs())"
                let selectDateeeee3 = datePicker.date.dateInYyyyMmDdSs()
                let formetter = DateFormatter()
                formetter.locale = Locale(identifier: "en_US_POSIX")
                formatter.dateFormat = "dd/MM/YYYY"
                let date = formatter.date(from: selectDateeeee3)
                let datee =   date
                self.grandFatherAgeCount = datee!.age
       
                self.grandFatherDOBTextField.text = "".appending(String(selectDateeeee3))
                print(self.grandFatherAgeCount)
                if self.grandFatherAgeCount < 41{
                    alert(message: "GrandFather Age must be 41 year to 75 year", title: "Message")
                    self.grandFatherDOBTextField.text?.removeAll()
                }else  if self.grandFatherAgeCount > 75{
                    alert(message: "GrandFather Age must be 41 year to 75 year", title: "Message")
                    self.grandFatherDOBTextField.text?.removeAll()
                }
            }else if textField == grandMotherDOBTextField{
                grandMotherDOBTextField.text = "\(datePicker.date.dateInYyyyMmDdSs())"
                let selectDateeeee35 = datePicker.date.dateInYyyyMmDdSs()
                let formetter = DateFormatter()
                formetter.locale = Locale(identifier: "en_US_POSIX")
                formatter.dateFormat = "dd/MM/YYYY"
                let date = formatter.date(from: selectDateeeee35)
                let datee =   date
                self.grandMotherAgeCount = datee!.age

                self.grandMotherDOBTextField.text = "".appending(String(selectDateeeee35))
                print(self.grandMotherAgeCount)
                if self.grandMotherAgeCount < 41{
                    alert(message: "GrandMother Age must be 41 year to 75 year", title: "Message")
                    self.grandMotherDOBTextField.text?.removeAll()
                }else  if self.grandMotherAgeCount > 75{
                    alert(message: "GrandMother Age must be 41 year to 75 year", title: "Message")
                    self.grandMotherDOBTextField.text?.removeAll()
                }
            }else if textField == grandSonDOBTextField{
                grandSonDOBTextField.text = "\(datePicker.date.dateInYyyyMmDdSs())"
                let selectDateeeee15 = datePicker.date.dateInYyyyMmDdSs()
                let formetter = DateFormatter()
                formetter.locale = Locale(identifier: "en_US_POSIX")
                formatter.dateFormat = "dd/MM/YYYY"
                let date = formatter.date(from: selectDateeeee15)
                let datee =   date
                self.grandSonAgeCount = datee!.age

                self.grandSonDOBTextField.text = "".appending(String(selectDateeeee15))
                print(self.grandSonAgeCount)
                if self.grandSonAgeCount < 91{
                    alert(message: "Grand Son Age must be 91 days to 25 year", title: "Message")
                    self.grandSonDOBTextField.text?.removeAll()
                }else  if self.grandSonAgeCount > 75{
                    alert(message: "Grand Son Age must be 91 days to 25 year", title: "Message")
                    self.grandSonDOBTextField.text?.removeAll()
                }
            }else if textField == grandDaughterDOBTextField{
                grandDaughterDOBTextField.text = "\(datePicker.date.dateInYyyyMmDdSs())"
                let selectDateeeee24 = datePicker.date.dateInYyyyMmDdSs()
                let formetter = DateFormatter()
                formetter.locale = Locale(identifier: "en_US_POSIX")
                formatter.dateFormat = "dd/MM/YYYY"
                let date = formatter.date(from: selectDateeeee24)
                let datee =   date
                self.grandDaughterAgeCount = datee!.age

                self.grandDaughterDOBTextField.text = "".appending(String(selectDateeeee24))
                print(self.grandDaughterAgeCount)
                if self.grandDaughterAgeCount < 91{
                    alert(message: "Grand Daughter Law Age must be 91 days to 25 year", title: "Message")
                    self.grandDaughterDOBTextField.text?.removeAll()
                }else  if self.grandDaughterAgeCount > 25{
                    alert(message: "Grand Daughter Age must be 91 days to 25 year", title: "Message")
                    self.grandDaughterDOBTextField.text?.removeAll()
                }
            }else if textField == brotherInLawDOBTextField{
                brotherInLawDOBTextField.text = "\(datePicker.date.dateInYyyyMmDdSs())"
                let selectDateeeee14 = datePicker.date.dateInYyyyMmDdSs()
                let formetter = DateFormatter()
                formetter.locale = Locale(identifier: "en_US_POSIX")
                formatter.dateFormat = "dd/MM/YYYY"
                let date = formatter.date(from: selectDateeeee14)
                let datee =   date
                self.brotherinLawAgeCount = datee!.age
         
                self.brotherInLawDOBTextField.text = "".appending(String(selectDateeeee14))
                print(self.brotherinLawAgeCount)
                if self.brotherinLawAgeCount < 18{
                    alert(message: "Brother In Law Age must be 18 years to 75 year", title: "Message")
                    self.brotherInLawDOBTextField.text?.removeAll()
                }else  if self.brotherinLawAgeCount > 75{
                    alert(message: "Brother in Law Age must be 18 years to 75 year", title: "Message")
                    self.brotherInLawDOBTextField.text?.removeAll()
                }
            } else if textField == sisterInLawDOBTextField{
                sisterInLawDOBTextField.text = "\(datePicker.date.dateInYyyyMmDdSs())"
                let selectDateeeee46 = datePicker.date.dateInYyyyMmDdSs()
                let formetter = DateFormatter()
                formetter.locale = Locale(identifier: "en_US_POSIX")
                formatter.dateFormat = "dd/MM/YYYY"
                let date = formatter.date(from: selectDateeeee46)
                let datee =   date
                self.sisterinLawAgeCount = datee!.age

                self.sisterInLawDOBTextField.text = "".appending(String(selectDateeeee46))
                print(self.sisterinLawAgeCount)
                if self.sisterinLawAgeCount < 18{
                    alert(message: "Sister in Law Age must be 18 years to 75 year", title: "Message")
                    self.sisterInLawDOBTextField.text?.removeAll()
                }else  if self.sisterinLawAgeCount > 75{
                    alert(message: "Sister in Law Age must be 18 years to 75 year", title: "Message")
                    self.sisterInLawDOBTextField.text?.removeAll()
                }
            }else if textField == nephewDOBTextField{
                nephewDOBTextField.text = "\(datePicker.date.dateInYyyyMmDdSs())"
                let selectDateeeee47 = datePicker.date.dateInYyyyMmDdSs()
                let formetter = DateFormatter()
                formetter.locale = Locale(identifier: "en_US_POSIX")
                formatter.dateFormat = "dd/MM/YYYY"
                let date = formatter.date(from: selectDateeeee47)
                let datee =   date
                self.nephewAgeCount = datee!.age
          
                self.nephewDOBTextField.text = "".appending(String(selectDateeeee47))
                print(self.nephewAgeCount)
                if selectDateeeee47.compare(today) == .orderedAscending{
                   // alert(message: "Age must be 91 days to 25 year", title: "Message")
                    //self.nephewDOBTextField.text?.removeAll()
                }else if selectDateeeee47.compare(today) == .orderedSame {
                    alert(message: "Nephew Age must be 91 days to 25 year", title: "Message")
                   // self.nephewDOBTextField.text?.removeAll()
                }else if self.nephewAgeCount > 25{
                    alert(message: "Age must be 91 day to 25 year", title: "Message")
                    //self.frChildDob_Txt.text?.removeAll()
                       }
            }else if textField == nieceDOBTextField{
                nieceDOBTextField.text = "\(datePicker.date.dateInYyyyMmDdSs())"
                let selectDateeeee42 = datePicker.date.dateInYyyyMmDdSs()
                let formetter = DateFormatter()
                formetter.locale = Locale(identifier: "en_US_POSIX")
                formatter.dateFormat = "dd/MM/YYYY"
                let date = formatter.date(from: selectDateeeee42)
                let datee =   date
                self.nieceAgeCount = datee!.age

                self.nieceDOBTextField.text = "".appending(String(selectDateeeee42))
                print(self.nieceAgeCount)
                if self.nieceAgeCount < 91{
                    alert(message: "Niece Age must be 91 days to 25 year", title: "Message")
                    self.nieceDOBTextField.text?.removeAll()
                }else  if self.nieceAgeCount > 25{
                    alert(message: "Niece Age must be 91 days to 25 year", title: "Message")
                    self.nieceDOBTextField.text?.removeAll()
                }
            }else if textField == sonDOBTextField{
                sonDOBTextField.text = "\(datePicker.date.dateInYyyyMmDdSs())"
                let selectDateeeee48 = datePicker.date.dateInYyyyMmDdSs()
                let formetter = DateFormatter()
                formetter.locale = Locale(identifier: "en_US_POSIX")
                formatter.dateFormat = "dd/MM/YYYY"
                let date = formatter.date(from: selectDateeeee48)
                let datee =   date
                self.sonAgeCount = datee!.age

                self.sonDOBTextField.text = "".appending(String(selectDateeeee48))
                print(self.sonAgeCount)
                if self.sonAgeCount < 91{
                    alert(message: "Son Age must be 91 days to 25 year", title: "Message")
                    self.sonDOBTextField.text?.removeAll()
                }else  if self.sonAgeCount > 25{
                    alert(message: "Son Age must be 91 days to 25 year", title: "Message")
                    self.sonDOBTextField.text?.removeAll()
                }
            }else if textField == daughterDOBTextField{
                daughterDOBTextField.text = "\(datePicker.date.dateInYyyyMmDdSs())"
                let selectDateeeee44 = datePicker.date.dateInYyyyMmDdSs()
                let formetter = DateFormatter()
                formetter.locale = Locale(identifier: "en_US_POSIX")
                formatter.dateFormat = "dd/MM/YYYY"
                let date = formatter.date(from: selectDateeeee44)
                let datee =   date
                self.daughterAgeCount = datee!.age

                self.daughterDOBTextField.text = "".appending(String(selectDateeeee44))
                print(self.daughterAgeCount)
                if self.daughterAgeCount < 91{
                    alert(message: "Daughter Age must be 91 days to 25 year", title: "Message")
                    self.daughterDOBTextField.text?.removeAll()
                }else  if self.daughterAgeCount > 25{
                    alert(message: "Daughter Age must be 91 days to 25 year", title: "Message")
                    self.daughterDOBTextField.text?.removeAll()
                }
            }
        }
}
