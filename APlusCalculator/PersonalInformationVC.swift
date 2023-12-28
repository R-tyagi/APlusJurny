//
//  PersonalInformationVC.swift
//  UniversalSompo
//
//  Created by Inmortal Tech on 23/06/22.
//  Copyright © 2022 Inmorteltech. All rights reserved.
//

import UIKit
import DropDown
import SwiftyJSON
import SVProgressHUD

class PersonalInformationVC:BaseViewController{
    @IBOutlet weak var Emailtxt: UILabel!
    
    @IBOutlet weak var Gendertxt: UILabel!
    @IBOutlet weak var Surname: UILabel!
    @IBOutlet weak var Lastname: UILabel!
    @IBOutlet weak var NomineeGender: UIButton!
    @IBOutlet weak var PersonalinfoDob: UILabel!
    @IBOutlet weak var Viewall: UIButton!
    @IBOutlet weak var Nametxt: UILabel!
    @IBOutlet weak var FirstNameView: UIView!
    @IBOutlet weak var LastNameView: UIView!
    @IBOutlet weak var BirthDateView: UIView!
    @IBOutlet weak var GenderView: UIView!
    @IBOutlet weak var OccupationView: UIView!
    
    
    @IBOutlet weak var EmailIDView: UIView!
    @IBOutlet weak var Address1View: UITextView!
    @IBOutlet weak var Address2View: UITextView!
    @IBOutlet weak var LandmarkView: UIView!
    @IBOutlet weak var StateView: UIView!
    @IBOutlet weak var PincodeView: UIView!
    @IBOutlet weak var NomineeRelationView: UIView!
    @IBOutlet weak var NomineeDetailsView: UIView!
    @IBOutlet weak var nomineeBtn: UIButton!
    @IBOutlet weak var genderBtn: UIButton!
    @IBOutlet weak var nomineeDropdownImg: UIImageView!
    @IBOutlet weak var RelationView: UIView!
    @IBOutlet weak var PersonalInfoView: UIView!
    @IBOutlet weak var NomineeDetailView: UIView!
    @IBOutlet weak var PersonalInformationScroll: UIScrollView!
    @IBOutlet weak var PersonalInfoViewHeight: NSLayoutConstraint!
    @IBOutlet weak var NomineeInfoViewHeight: NSLayoutConstraint!
    @IBOutlet weak var personalInfoNsView: NSLayoutConstraint!
    @IBOutlet weak var personalInfoBtnView: UIView!
    @IBOutlet weak var personalInfoArrowBtn: UIButton!
    @IBOutlet weak var TxtNameFST: UITextField!
    @IBOutlet weak var TxtNAMELST: UITextField!
    @IBOutlet weak var TxtBithdate: UITextField!
    @IBOutlet weak var TxtEmailID: UITextField!
    @IBOutlet weak var TxtLandmark: UITextField!
    @IBOutlet weak var TxtGender: UITextField!
    @IBOutlet weak var TxtRelation: UITextField!
    @IBOutlet weak var TxtPincode: UITextField!
    @IBOutlet weak var nomineeName_Txt: UITextField!
    @IBOutlet weak var weight_Txt: UITextField!
    
    @IBOutlet weak var Bmi_Txt: UITextField!
    @IBOutlet weak var fit_View  : UIView!
    @IBOutlet weak var inch_View : UIView!
    @IBOutlet weak var city_View : UIView!
    @IBOutlet weak var continueBtn: UIButton!
    @IBOutlet weak var city_Txt : UITextField!
    @IBOutlet weak var state_Txt: UITextField!
    @IBOutlet weak var pinCode_Txt: UITextField!
    @IBOutlet weak var dob_Txt: UITextField!
    @IBOutlet weak var scroll_NsView : NSLayoutConstraint!
    @IBOutlet weak var relationBtn: UIButton!
    @IBOutlet weak var fitBtn: UIButton!
    @IBOutlet weak var inchesBtn: UIButton!
    @IBOutlet weak var occupationBtn: UIButton!
    @IBOutlet weak var totalpremiumLbl: UILabel!
    @IBOutlet weak var viewallBTn: UIButton!
    //MARK: - spouse details outlet
    @IBOutlet weak var spouseBtn: UIButton!
    @IBOutlet weak var spouseBtnImg: UIImageView!
    @IBOutlet weak var lastname_Txt: UITextField!
    @IBOutlet weak var spouseView  : UIView!
    @IBOutlet weak var spouseNsView  : NSLayoutConstraint!
    @IBOutlet weak var spouseDetailsView  : UIView!
    @IBOutlet weak var spouseDetailsNsView  : NSLayoutConstraint!
    @IBOutlet weak var spousesAdultNAmeTxt: UITextField!
    @IBOutlet weak var spousesDobTxt: UITextField!
    @IBOutlet weak var spousesGenderTxt: UITextField!
    
    @IBOutlet weak var spousesOccupationView: UIView!
    @IBOutlet weak var spousesOccupationBtn: UIButton!
    @IBOutlet weak var spousesAdultInchesBtn: UIButton!
    @IBOutlet weak var spousesAdultInchesView: UIView!
    @IBOutlet weak var spousesAdultFitBtn: UIButton!
    @IBOutlet weak var spousesAdultFitView: UIView!
    @IBOutlet weak var spousesweightView: UIView!
    @IBOutlet weak var spousesWeightTxt: UITextField!
    @IBOutlet weak var spousesAdultbmi_Txt: UITextField!
    @IBOutlet weak var spousesAdultRelation_Txt: UITextField!
    @IBOutlet weak var spousegenderBtn :UIButton!
    //MARK: - FirstChild details
    @IBOutlet weak var firstChildBtn: UIButton!
    @IBOutlet weak var firstchildBTnImg: UIImageView!
    @IBOutlet weak var firstChildlastname_Txt: UITextField!
    @IBOutlet weak var firstChildView  : UIView!
    @IBOutlet weak var firstChildNsView  : NSLayoutConstraint!
    @IBOutlet weak var firstChildDetailsView  : UIView!
    @IBOutlet weak var firstChildDetailsNsView  : NSLayoutConstraint!
    @IBOutlet weak var firstChildAdultNAmeTxt: UITextField!
    @IBOutlet weak var firstChildDobView: UIView!
    @IBOutlet weak var firstChildDobTxt: UITextField!
    @IBOutlet weak var firstChildGenderTxt: UITextField!
    @IBOutlet weak var firstChildGenderbtn: UIButton!
    @IBOutlet weak var firstChildOccupationView: UIView!
    @IBOutlet weak var firstChildOccupationBtn: UIButton!
    @IBOutlet weak var firstChildAdultInchesBtn: UIButton!
    @IBOutlet weak var firstChildAdultInchesView: UIView!
    @IBOutlet weak var firstChildAdultFitBtn: UIButton!
    @IBOutlet weak var firstChildAdultFitView: UIView!
    @IBOutlet weak var firstChildweightView: UIView!
    @IBOutlet weak var firstChildWeightTxt: UITextField!
    @IBOutlet weak var firstChildbmi_Txt: UITextField!
    @IBOutlet weak var firstChildRelationTxt: UITextField!
    //MARK: - second child details
    @IBOutlet weak var secondChildBtn: UIButton!
    @IBOutlet weak var secondchildBTnImg: UIImageView!
    @IBOutlet weak var secondChildlastname_Txt: UITextField!
    @IBOutlet weak var secondChildView  : UIView!
    @IBOutlet weak var secondChildNsView  : NSLayoutConstraint!
    @IBOutlet weak var secondChildDetailsView  : UIView!
    @IBOutlet weak var secondChildDetailsNsView  : NSLayoutConstraint!
    @IBOutlet weak var secondChildsAdultNAmeTxt: UITextField!
    @IBOutlet weak var secondChildsDobView: UIView!
    @IBOutlet weak var secondChildsDobTxt: UITextField!
    @IBOutlet weak var secondChildsGenderTxt: UITextField!
    @IBOutlet weak var secondChildsGenderbtn: UIButton!
    @IBOutlet weak var secondChildsOccupationView: UIView!
    @IBOutlet weak var secondChildsOccupationBtn: UIButton!
    @IBOutlet weak var secondChildsAdultInchesBtn: UIButton!
    @IBOutlet weak var secondChildsAdultInchesView: UIView!
    @IBOutlet weak var secondChildsAdultFitBtn: UIButton!
    @IBOutlet weak var secondChildsAdultFitView: UIView!
    @IBOutlet weak var secondChildsWeightTxt: UITextField!
    @IBOutlet weak var secondChildsbmi_Txt: UITextField!
    @IBOutlet weak var secondChildRelation_Txt: UITextField!
    //MARK: - thirdChild details
    @IBOutlet weak var thirdChildBtn: UIButton!
    @IBOutlet weak var thirdchildBTnImg: UIImageView!
    @IBOutlet weak var thirdChildlastname_Txt: UITextField!
    @IBOutlet weak var thirdChildView  : UIView!
    @IBOutlet weak var thirdChildNsView  : NSLayoutConstraint!
    @IBOutlet weak var thirdChildDetailsView  : UIView!
    @IBOutlet weak var thirdChildDetailsNsView  : NSLayoutConstraint!
    @IBOutlet weak var thirdChildAdultNAmeTxt: UITextField!
    @IBOutlet weak var thirdChildDobView: UIView!
    @IBOutlet weak var thirdChildDobTxt: UITextField!
    @IBOutlet weak var thirdChildGenderTxt: UITextField!
    @IBOutlet weak var thirdChildOccupationView: UIView!
    @IBOutlet weak var thirdChildOccupationBtn: UIButton!
    @IBOutlet weak var thirdChildAdultInchesBtn: UIButton!
    @IBOutlet weak var ThirdChildAdultInchesView: UIView!
    @IBOutlet weak var thirdChildAdultFitBtn: UIButton!
    @IBOutlet weak var ThirdChildAdultFitView: UIView!
    @IBOutlet weak var thirdChildweightView: UIView!
    @IBOutlet weak var thirdChildWeightTxt: UITextField!
    @IBOutlet weak var thirdChildbmi_Txt: UITextField!
    @IBOutlet weak var thirdChildRelation_Txt: UITextField!
    //MARK: - fourth Child details
    @IBOutlet weak var fourthChildBtn: UIButton!
    @IBOutlet weak var fourthchildBTnImg: UIImageView!
    @IBOutlet weak var CheckButton: UIButton!
    
    
    
    @IBOutlet weak var CKYCMobileNo: UILabel!
    @IBOutlet weak var fourthChildlastname_Txt: UITextField!
    @IBOutlet weak var fourthChildView  : UIView!
    @IBOutlet weak var fourthChildNsView  : NSLayoutConstraint!
    @IBOutlet weak var fourthChildDetailsView  : UIView!
    @IBOutlet weak var fourthChildDetailsNsView  : NSLayoutConstraint!
    @IBOutlet weak var fourthChildAdultNAmeTxt: UITextField!
    @IBOutlet weak var fourthChildDobView: UIView!
    @IBOutlet weak var fourthChildDobTxt: UITextField!
    @IBOutlet weak var fourthChildGenderTxt: UITextField!
    @IBOutlet weak var fourthChildGenderbtn: UIButton!
    @IBOutlet weak var fourthChildOccupationView: UIView!
    @IBOutlet weak var fourthChildOccupationBtn: UIButton!
    @IBOutlet weak var fourthChildAdultInchesBtn: UIButton!
    @IBOutlet weak var fourthChildAdultInchesView: UIView!
    @IBOutlet weak var fourthChildAdultFitBtn: UIButton!
    @IBOutlet weak var fourthChildAdultFitView: UIView!
    @IBOutlet weak var fourthChildWeightTxt: UITextField!
    @IBOutlet weak var fourthChildbmi_Txt: UITextField!
    @IBOutlet weak var fourthChildRelation_Txt: UITextField!
    //MARK: - Father details  out let
    @IBOutlet weak var fatherBtn: UIButton!
    @IBOutlet weak var fatherBTnImg: UIImageView!
    @IBOutlet weak var fatherlastname_Txt: UITextField!
    @IBOutlet weak var fatherView  : UIView!
    @IBOutlet weak var fatherNsView  : NSLayoutConstraint!
    @IBOutlet weak var fatherDetailsView  : UIView!
    @IBOutlet weak var fatherDetailsNsView  : NSLayoutConstraint!
    @IBOutlet weak var fatherAdultNAmeTxt: UITextField!
    @IBOutlet weak var fatherDobView: UIView!
    @IBOutlet weak var fatherDobTxt: UITextField!
    @IBOutlet weak var fatherGenderTxt: UITextField!
    @IBOutlet weak var fatherGenderbtn: UIButton!
    @IBOutlet weak var fatherOccupationView: UIView!
    @IBOutlet weak var fatherOccupationBtn: UIButton!
    @IBOutlet weak var fatherAdultInchesBtn: UIButton!
    @IBOutlet weak var fatherAdultInchesView: UIView!
    @IBOutlet weak var fatherAdultFitBtn: UIButton!
    @IBOutlet weak var fatherAdultFitView: UIView!
    @IBOutlet weak var fatherweightView: UIView!
    @IBOutlet weak var fatherWeightTxt: UITextField!
    @IBOutlet weak var fatherAdultbmi_Txt: UITextField!
    @IBOutlet weak var fatherAdultRelationTxt: UITextField!
    //MARK: - mother details  out let
    @IBOutlet weak var motherChildBtn: UIButton!
    @IBOutlet weak var motherchildBTnImg: UIImageView!
    @IBOutlet weak var motherChildlastname_Txt: UITextField!
    @IBOutlet weak var motherView  : UIView!
    @IBOutlet weak var motherNsView  : NSLayoutConstraint!
    @IBOutlet weak var motherDetailsView  : UIView!
    @IBOutlet weak var motherDetailsNsView  : NSLayoutConstraint!
    @IBOutlet weak var motherAdultNAmeTxt: UITextField!
    @IBOutlet weak var motherDobView: UIView!
    @IBOutlet weak var motherDobTxt: UITextField!
    @IBOutlet weak var motherGenderTxt: UITextField!
    @IBOutlet weak var motherGenderbtn: UIButton!
    @IBOutlet weak var motherOccupationView: UIView!
    @IBOutlet weak var motherOccupationBtn: UIButton!
    @IBOutlet weak var motherAdultInchesBtn: UIButton!
    @IBOutlet weak var motherAdultInchesView: UIView!
    @IBOutlet weak var motherAdultFitBtn: UIButton!
    @IBOutlet weak var motherAdultFitView: UIView!
    @IBOutlet weak var motherweightView: UIView!
    @IBOutlet weak var motherWeightTxt: UITextField!
    @IBOutlet weak var motherAdultbmi_Txt: UITextField!
    @IBOutlet weak var motherAdultRelation_Txt: UITextField!
    //MARK: - Grand Father details  out let
    @IBOutlet weak var gFatherChildBtn: UIButton!
    @IBOutlet weak var gFatherchildBTnImg: UIImageView!
    @IBOutlet weak var gFatherChildlastname_Txt: UITextField!
    @IBOutlet weak var gFatherView  : UIView!
    @IBOutlet weak var gFatherNsView  : NSLayoutConstraint!
    @IBOutlet weak var gFatherDetailsView  : UIView!
    @IBOutlet weak var gFatherDetailsNsView  : NSLayoutConstraint!
    @IBOutlet weak var gFatherAdultNAmeTxt: UITextField!
    @IBOutlet weak var gFatherDobView: UIView!
    @IBOutlet weak var gFatherDobTxt: UITextField!
    @IBOutlet weak var gFatherGenderTxt: UITextField!
    @IBOutlet weak var gFatherGenderbtn: UIButton!
    @IBOutlet weak var gFatherOccupationView: UIView!
    @IBOutlet weak var gFatherOccupationBtn: UIButton!
    @IBOutlet weak var gFatherAdultInchesBtn: UIButton!
    @IBOutlet weak var gFatherAdultInchesView: UIView!
    @IBOutlet weak var gFatherAdultFitBtn: UIButton!
    @IBOutlet weak var gFatherAdultFitView: UIView!
    @IBOutlet weak var gFatherweightView: UIView!
    @IBOutlet weak var gFatherWeightTxt: UITextField!
    @IBOutlet weak var gFatherAdultbmi_Txt: UITextField!
    @IBOutlet weak var gFatherAdultRelationTxt: UITextField!
    //MARK: - Grand Mother details  out let
    @IBOutlet weak var gMotherChildBtn: UIButton!
    @IBOutlet weak var gMotherchildBTnImg: UIImageView!
    @IBOutlet weak var gMotherChildlastname_Txt: UITextField!
    @IBOutlet weak var gMotherView  : UIView!
    @IBOutlet weak var gMotherNsView  : NSLayoutConstraint!
    @IBOutlet weak var gMotherDetailsView  : UIView!
    @IBOutlet weak var gMotherDetailsNsView  : NSLayoutConstraint!
    @IBOutlet weak var gMotherAdultNAmeTxt: UITextField!
    @IBOutlet weak var gMotherDobView: UIView!
    @IBOutlet weak var gMotherDobTxt: UITextField!
    @IBOutlet weak var gMotherGenderTxt: UITextField!
    @IBOutlet weak var gMotherGenderbtn: UIButton!
    @IBOutlet weak var gMotherOccupationView: UIView!
    @IBOutlet weak var gMotherOccupationBtn: UIButton!
    @IBOutlet weak var gMotherAdultInchesBtn: UIButton!
    @IBOutlet weak var gMotherAdultInchesView: UIView!
    @IBOutlet weak var gMotherAdultFitBtn: UIButton!
    @IBOutlet weak var gMotherAdultFitView: UIView!
    @IBOutlet weak var gMotherweightView: UIView!
    @IBOutlet weak var gMotherWeightTxt: UITextField!
    @IBOutlet weak var gMotherAdultbmi_Txt: UITextField!
    @IBOutlet weak var gMotherAdultRelationTxt: UITextField!
    @IBOutlet weak var nomineeNSView      : NSLayoutConstraint!
    @IBOutlet weak var gmotherBottmNSView : NSLayoutConstraint!
    @IBOutlet weak var gfatherBottmNSView : NSLayoutConstraint!
    @IBOutlet weak var motherBottmNSView  : NSLayoutConstraint!
    @IBOutlet weak var fatherBottmNsView  : NSLayoutConstraint!
    @IBOutlet weak var frChildBottmNSView : NSLayoutConstraint!
    @IBOutlet weak var tChildBottmNsView  : NSLayoutConstraint!
    @IBOutlet weak var sChildTopNSVIew    : NSLayoutConstraint!
    @IBOutlet weak var fChildBottmNsView  : NSLayoutConstraint!
    @IBOutlet weak var spouseBottmNsView  : NSLayoutConstraint!
    @IBOutlet weak var gMotherDoubleNSView: NSLayoutConstraint!
    @IBOutlet weak var gFatherDoubleNSView: NSLayoutConstraint!
    @IBOutlet weak var motherDoubleNsView : NSLayoutConstraint!
    @IBOutlet weak var fatherDoubleNsView : NSLayoutConstraint!
    @IBOutlet weak var frChildDoubleNSView: NSLayoutConstraint!
    @IBOutlet weak var tChildDoubleNSView : NSLayoutConstraint!
    @IBOutlet weak var sChildDoubleNSVIew : NSLayoutConstraint!
    @IBOutlet weak var fChildDoubleNSView : NSLayoutConstraint!
    @IBOutlet weak var spouseDoubleNsView : NSLayoutConstraint!
    
    @IBOutlet weak var txtDatePicker: UITextField!
    let datePicker = UIDatePicker()
    
  
    var bmical = String()
    var inches  = String()
    var  h = Double()
    var  w = Double()
    var  p = Double()
    var fit  = String()
  //  let datePicker  = UIDatePicker()
    let formatter = DateFormatter()
    //MARK: -  for bmi
    var firstAdultWeight = String();var spouseAdultWeight = String(); var firstChildWeight = String(); var secondChildWeight = String(); var thirdChildWeight = String(); var fourthChildWeight = String()
    var selfStatus = String();var spouseStatus = String();var motherStatus = String();var fatherStatus = String();var motherInLawStatus = String();var fatherInLawStatus = String();var fChildStatus = String();
    var sChildstatus = String();var tChldStatus = String();var fourthChildStatus = String();var textCount = String()
    //MARK: - variables for the save data
    var selfOccupation =  String();var spouseOccupation = String();var motherOccupation = String();var fatherOccupation = String(); var gMotherOccupation = String();var gFatherOccupation = String()
    var selfGender =  String();var spouseGender = String();var motherGender = String();var fatherGender = String(); var gMotherGender = String();var gFatherGender = String()
    var selfRelation =  String();var spouseRelation = String();var motherRelation = String();var fatherRelation = String(); var gMotherRelation = String();var gFatherRelation = String()
    //MARK: -  view life cycle view did load
    override func viewDidLoad() {
        super.viewDidLoad()
        self.txtDatePicker.setInputViewDatePicker(target: self, selector: #selector(tapDone)) //1


        func validZipCode(postalCode:String)->Bool{
            let postalcodeRegex = "^[0-9]{5}(-[0-9]{4})?$"
            let pinPredicate = NSPredicate(format: "SELF MATCHES %@", postalcodeRegex)
            let bool = pinPredicate.evaluate(with: postalCode) as Bool
            return bool
        }
    
        Address2View.text = "Enter Your Address"
        Address2View.textColor = UIColor.lightGray
        fatherlastname_Txt.placeholder = "Enter your Last Name"
        self.retrieveData()
        self.cornerRadious()
        self.textfieldDelegate()
        self.createdatePickerView()
        self.Address1View.text = "Enter Your Address"
        Address1View.textColor = UIColor.lightGray
        
        self.attributedLine()
    }
    
    
    @IBAction func ChechButtonTapped(_ sender: Any) {
        if CheckButton.isSelected {
            CheckButton.setBackgroundImage(UIImage(named: "unchecked"), for: .normal)
        } else {
            CheckButton.setBackgroundImage(UIImage(named: "checked"), for:.normal)
        }
        CheckButton.isSelected = !CheckButton.isSelected
    }

    //MARK: - attributed line for terms and conditions
    func attributedLine(){
        let underlineAttribute = [NSAttributedString.Key.underlineStyle: NSUnderlineStyle.thick.rawValue]
        let underlineAttributedString = NSAttributedString(string: "StringWithUnderLine", attributes: underlineAttribute)
        viewallBTn.setUnderline(ofColor: #colorLiteral(red: 0.2392156869, green: 0.6745098233, blue: 0.9686274529, alpha: 1), andSize: 1)
    }
    //MARK: - func for date picker
    func createdatePickerView() {
        var dateFormatter = DateFormatter()
        if #available(iOS 13.4, *) {
            datePicker.preferredDatePickerStyle = .wheels
        } else {
        }
        datePicker.datePickerMode = .date
   //     dob_Txt.inputView = datePicker
        spousesDobTxt.inputView = datePicker
        firstChildDobTxt.inputView = datePicker
        secondChildsDobTxt.inputView = datePicker
        thirdChildDobTxt.inputView = datePicker
        fourthChildDobTxt.inputView = datePicker
        fatherDobTxt.inputView = datePicker
        motherDobTxt.inputView = datePicker
        gFatherDobTxt.inputView = datePicker
        gMotherDobTxt.inputView = datePicker
    }
    
    @objc func donePressed() {
     //   self.dob_Txt.text = "\(datePicker.date.dateInYyyyMmDdSs())"
        self.spousesDobTxt.text = "\(datePicker.date.dateInYyyyMmDdSs())"
        self.firstChildDobTxt.text = "\(datePicker.date.dateInYyyyMmDdSs())"
        self.secondChildsDobTxt.text = "\(datePicker.date.dateInYyyyMmDdSs())"
        self.thirdChildDobTxt.text = "\(datePicker.date.dateInYyyyMmDdSs())"
        self.fourthChildDobTxt.text = "\(datePicker.date.dateInYyyyMmDdSs())"
        self.fatherDobTxt.text = "\(datePicker.date.dateInYyyyMmDdSs())"
        self.motherDobTxt.text = "\(datePicker.date.dateInYyyyMmDdSs())"
        self.gFatherDobTxt.text = "\(datePicker.date.dateInYyyyMmDdSs())"
        self.gMotherDobTxt.text = "\(datePicker.date.dateInYyyyMmDdSs())"
    }
    
    
    @IBAction func PincodetextAction(_ sender: Any) {
        func validZipCode(postalCode:String)->Bool{
            let postalcodeRegex = "^[0-9]{5}(-[0-9]{4})?$"
            let pinPredicate = NSPredicate(format: "SELF MATCHES %@", postalcodeRegex)
            let bool = pinPredicate.evaluate(with: postalCode) as Bool
            return bool
        }
        
    }
    
    @objc func tapDone() {
        if let datePicker = self.txtDatePicker.inputView as? UIDatePicker { // 2-1
            let dateformatter = DateFormatter() // 2-2
            dateformatter.dateStyle = .medium // 2-3
            dateformatter.dateFormat = "dd/MM/yyyy"
            self.txtDatePicker.text = dateformatter.string(from: datePicker.date) //2-4
        }
        self.txtDatePicker.resignFirstResponder() // 2-5
    }
}
//MARK: -  extension for the corner radious,textfield delegate  etc
extension PersonalInformationVC{
    func textfieldDelegate(){
        self.pinCode_Txt.delegate =  self
        self.weight_Txt.delegate   =  self
        self.gFatherDobTxt.delegate = self
        self.gMotherDobTxt.delegate = self
        self.fatherDobTxt.delegate =  self
        self.motherDobTxt.delegate =  self
        self.firstChildDobTxt.delegate =  self
        self.secondChildsDobTxt.delegate =  self
        self.thirdChildDobTxt.delegate =  self
        self.fourthChildDobTxt.delegate =  self
        self.spousesDobTxt.delegate =  self
       // self.dob_Txt.delegate =  self
        self.TxtNameFST.delegate =  self
        self.Address1View.delegate =  self
        self.Address2View.delegate =  self
       self.TxtNameFST.delegate = self
//        self.TxtNAMELST.delegate = self
        self.spousesAdultNAmeTxt.delegate = self
        self.firstChildAdultNAmeTxt.delegate = self
        self.secondChildsAdultNAmeTxt.delegate = self
        self.thirdChildAdultNAmeTxt.delegate = self
        self.thirdChildlastname_Txt.delegate = self
        self.fourthChildAdultNAmeTxt.delegate = self
        self.fourthChildlastname_Txt.delegate = self
        self.fatherAdultNAmeTxt.delegate = self
        self.fatherlastname_Txt.delegate = self
        self.motherAdultNAmeTxt.delegate = self
        self.motherChildlastname_Txt.delegate = self
        self.gFatherAdultNAmeTxt.delegate = self
        self.gFatherChildlastname_Txt.delegate = self
        
    }
    func cornerRadious(){
        self.continueBtn.layer.cornerRadius = 20
        self.personalInfoBtnView.layer.cornerRadius =  10
        self.personalInfoBtnView.layer.borderWidth =  1
        self.FirstNameView.layer.cornerRadius = 20
        self.FirstNameView.layer.borderWidth = 1
        self.FirstNameView.layer.borderColor = UIColor.gray.cgColor
//        self.LastNameView.layer.cornerRadius = 20
  //      self.LastNameView.layer.borderWidth = 1
    //    self.LastNameView.layer.borderColor = UIColor.gray.cgColor
        self.BirthDateView.layer.cornerRadius = 20
        self.BirthDateView.layer.borderWidth = 1
        self.BirthDateView.layer.borderColor = UIColor.gray.cgColor
        self.GenderView.layer.cornerRadius = 20
        self.GenderView.layer.borderWidth = 1
        self.GenderView.layer.borderColor = UIColor.gray.cgColor
        self.OccupationView.layer.cornerRadius = 20
        self.OccupationView.layer.borderWidth = 1
        self.OccupationView.layer.borderColor = UIColor.gray.cgColor
        self.EmailIDView.layer.cornerRadius = 20
        self.EmailIDView.layer.borderWidth = 1
        self.EmailIDView.layer.borderColor = UIColor.gray.cgColor
        self.Address1View.layer.cornerRadius = 20
        self.Address1View.layer.borderWidth = 1
        self.Address1View.layer.borderColor = UIColor.gray.cgColor
        self.Address2View.layer.cornerRadius = 10
        self.Address2View.layer.borderWidth = 1
        self.Address2View.layer.borderColor = UIColor.gray.cgColor
        self.LandmarkView.layer.cornerRadius = 20
        self.LandmarkView.layer.borderWidth = 1
        self.LandmarkView.layer.borderColor = UIColor.gray.cgColor
        self.StateView.layer.cornerRadius = 20
        self.StateView.layer.borderWidth = 1
        self.StateView.layer.borderColor = UIColor.gray.cgColor
        self.PincodeView.layer.cornerRadius = 20
        self.PincodeView.layer.borderWidth = 1
        self.PincodeView.layer.borderColor = UIColor.gray.cgColor
        self.RelationView.layer.cornerRadius = 20
        self.RelationView.layer.borderWidth = 1
        self.RelationView.layer.borderColor = UIColor.gray.cgColor
        self.NomineeRelationView.layer.cornerRadius = 20
        self.NomineeRelationView.layer.borderWidth = 1
        self.NomineeRelationView.layer.borderColor = UIColor.gray.cgColor
        self.NomineeDetailsView.layer.cornerRadius = 4
        self.NomineeDetailsView.layer.borderWidth = 1
        self.NomineeDetailsView.layer.borderColor = UIColor.gray.cgColor
        self.TxtNameFST.AddPadding(.left(20))
        self.TxtNameFST.AddPadding(.right(20))
//        self.TxtNAMELST.AddPadding(.left(20))
     //   self.TxtNAMELST.AddPadding(.right(20))
//        self.TxtBithdate.AddPadding(.left(20))
    //    self.TxtBithdate.AddPadding(.right(20))
        self.TxtEmailID.AddPadding(.left(20))
        self.TxtEmailID.AddPadding(.right(20))
        self.TxtLandmark.AddPadding(.left(20))
        self.TxtLandmark.AddPadding(.right(20))
        self.TxtRelation.AddPadding(.left(20))
        self.TxtRelation.AddPadding(.right(20))
        //    self.TxtGender.AddPadding(.left(20))
        //        self.TxtGender.AddPadding(.right(20))
        self.TxtPincode.AddPadding(.left(20))
        self.TxtPincode.AddPadding(.right(20))
        self.NomineeDetailView.isHidden = true
        self.personalInfoNsView.constant =  0
        self.PersonalInfoView.isHidden =  true
        self.nomineeName_Txt.layer.cornerRadius =  20
        self.nomineeName_Txt.layer.borderWidth = 1
        self.weight_Txt.layer.cornerRadius =  20
//        self.Bmi_Txt.layer.cornerRadius =  20
        self.fit_View  .layer.cornerRadius =  20
        self.inch_View .layer.cornerRadius =  20
        self.weight_Txt.layer.borderWidth = 1
//        self.Bmi_Txt.layer.borderWidth = 1
        self.fit_View  .layer.borderWidth = 1
        self.inch_View .layer.borderWidth = 1
        self.city_View.layer.cornerRadius =  20
        self.city_View.layer.borderWidth = 1
//        self.Bmi_Txt.setLeftPaddingPoints(15)
        self.weight_Txt.setLeftPaddingPoints(15)
        self.nomineeName_Txt.setLeftPaddingPoints(15)
        self.city_Txt .setLeftPaddingPoints(15)
        self.state_Txt.setLeftPaddingPoints(15)
        //MARK: -  spouse
        self.spouseView.layer.cornerRadius =  10
        self.spouseView.layer.borderWidth = 1
        self.spousesAdultNAmeTxt.layer.cornerRadius =  20
        self.spousesAdultNAmeTxt.layer.borderWidth = 1
        self.spousesAdultNAmeTxt.setLeftPaddingPoints(15)
        self.spousesDobTxt.layer.cornerRadius =  20
        self.spousesDobTxt.layer.borderWidth = 1
        self.spousesDobTxt.setLeftPaddingPoints(15)
        self.spousesOccupationView.layer.cornerRadius =  20
        self.spousesOccupationView.layer.borderWidth = 1
        self.spousesWeightTxt.layer.cornerRadius =  20
        self.spousesWeightTxt.layer.borderWidth = 1
        self.spousesWeightTxt.setLeftPaddingPoints(15)
        self.spousesAdultInchesView.layer.cornerRadius =  20
        self.spousesAdultInchesView.layer.borderWidth = 1
        self.spousesAdultFitView.layer.cornerRadius =  20
        self.spousesAdultFitView.layer.borderWidth = 1
//        self.spousesAdultbmi_Txt.layer.cornerRadius =  20
//        self.spousesAdultbmi_Txt.layer.borderWidth = 1
//        self.spousesAdultbmi_Txt.setLeftPaddingPoints(15)
        self.spousesAdultNAmeTxt.layer.cornerRadius = 20
        self.spousesAdultNAmeTxt.layer.borderWidth = 1
        //MARK: -  First Child
        self.firstChildView.layer.cornerRadius =  10
        self.firstChildView.layer.borderWidth = 1
        self.spousesAdultNAmeTxt.layer.cornerRadius =  20
        self.spousesAdultNAmeTxt.layer.borderWidth = 1
        self.spousesAdultNAmeTxt.setLeftPaddingPoints(15)
        self.firstChildDobTxt.layer.cornerRadius =  20
        self.firstChildDobTxt.layer.borderWidth = 1
        self.firstChildDobTxt.setLeftPaddingPoints(15)
        self.firstChildOccupationView.layer.cornerRadius =  20
        self.firstChildOccupationView.layer.borderWidth = 1
        self.firstChildWeightTxt.layer.cornerRadius =  20
        self.firstChildWeightTxt.layer.borderWidth = 1
        self.firstChildWeightTxt.setLeftPaddingPoints(15)
        self.firstChildAdultInchesView.layer.cornerRadius =  20
        self.firstChildAdultInchesView.layer.borderWidth = 1
        self.firstChildAdultFitView.layer.cornerRadius =  20
        self.firstChildAdultFitView.layer.borderWidth = 1
//        self.firstChildbmi_Txt.layer.cornerRadius =  20
//        self.firstChildbmi_Txt.layer.borderWidth = 1
//        self.firstChildbmi_Txt.setLeftPaddingPoints(15)
        self.firstChildGenderTxt.layer.cornerRadius =  20
        self.firstChildGenderTxt.layer.borderWidth = 1
        self.firstChildGenderTxt.setLeftPaddingPoints(15)
        self.firstChildRelationTxt.layer.cornerRadius =  20
        self.firstChildRelationTxt.layer.borderWidth = 1
        self.firstChildRelationTxt.setLeftPaddingPoints(15)
        self.firstChildlastname_Txt.layer.cornerRadius = 20
        self.firstChildlastname_Txt.layer.borderWidth = 1
        //MARK: -  Second Child
        self.secondChildView.layer.cornerRadius =  10
        self.secondChildView.layer.borderWidth = 1
        self.secondChildsAdultNAmeTxt.layer.cornerRadius =  20
        self.secondChildsAdultNAmeTxt.layer.borderWidth = 1
        self.secondChildsAdultNAmeTxt.setLeftPaddingPoints(15)
        self.secondChildsDobTxt.layer.cornerRadius =  20
        self.secondChildsDobTxt.layer.borderWidth = 1
        self.secondChildsDobTxt.setLeftPaddingPoints(15)
        self.secondChildsOccupationView.layer.cornerRadius =  20
        self.secondChildsOccupationView.layer.borderWidth = 1
        self.secondChildsWeightTxt.layer.cornerRadius =  20
        self.secondChildsWeightTxt.layer.borderWidth = 1
        self.secondChildsAdultInchesView.layer.cornerRadius =  20
        self.secondChildsAdultInchesView.layer.borderWidth = 1
        self.secondChildsAdultFitView.layer.cornerRadius =  20
        self.secondChildsAdultFitView.layer.borderWidth = 1
//        self.secondChildsbmi_Txt.layer.cornerRadius =  20
//        self.secondChildsbmi_Txt.layer.borderWidth = 1
//        self.secondChildsbmi_Txt.setLeftPaddingPoints(15)
        self.secondChildsGenderTxt.layer.cornerRadius =  20
        self.secondChildsGenderTxt.layer.borderWidth = 1
        self.secondChildsGenderTxt.setLeftPaddingPoints(15)
        self.secondChildRelation_Txt.layer.cornerRadius =  20
        self.secondChildRelation_Txt.layer.borderWidth = 1
        self.secondChildRelation_Txt.setLeftPaddingPoints(15)
        self.secondChildlastname_Txt.layer.cornerRadius = 20
        self.secondChildlastname_Txt.layer.borderWidth = 1
        //MARK: -  third Child
        self.thirdChildView.layer.cornerRadius =  10
        self.thirdChildView.layer.borderWidth =  1
        self.thirdChildAdultNAmeTxt.layer.cornerRadius =  20
        self.thirdChildAdultNAmeTxt.layer.borderWidth = 1
        self.thirdChildAdultNAmeTxt.setLeftPaddingPoints(15)
        self.thirdChildDobTxt.layer.cornerRadius =  20
        self.thirdChildDobTxt.layer.borderWidth = 1
        self.thirdChildDobTxt.setLeftPaddingPoints(15)
        self.thirdChildOccupationView.layer.cornerRadius =  20
        self.thirdChildOccupationView.layer.borderWidth = 1
        self.thirdChildWeightTxt.layer.cornerRadius =  20
        self.thirdChildWeightTxt.layer.borderWidth = 1
        self.thirdChildWeightTxt.setLeftPaddingPoints(15)
        self.ThirdChildAdultInchesView.layer.cornerRadius =  20
        self.ThirdChildAdultInchesView.layer.borderWidth = 1
        self.ThirdChildAdultFitView.layer.cornerRadius =  20
        self.ThirdChildAdultFitView.layer.borderWidth = 1
        self.thirdChildbmi_Txt.layer.cornerRadius =  20
        self.thirdChildbmi_Txt.layer.borderWidth = 1
        self.thirdChildbmi_Txt.setLeftPaddingPoints(15)
        self.thirdChildGenderTxt.layer.cornerRadius =  20
        self.thirdChildGenderTxt.layer.borderWidth = 1
        self.thirdChildGenderTxt.setLeftPaddingPoints(15)
        self.thirdChildRelation_Txt.layer.cornerRadius =  20
        self.thirdChildRelation_Txt.layer.borderWidth = 1
        self.thirdChildRelation_Txt.setLeftPaddingPoints(15)
        self.thirdChildlastname_Txt.layer.cornerRadius = 20
        self.thirdChildlastname_Txt.layer.borderWidth = 1
        //MARK: -  fourth Child
        self.fourthChildView.layer.cornerRadius =  10
        self.fourthChildView.layer.borderWidth = 1
        self.fourthChildAdultNAmeTxt.layer.cornerRadius =  20
        self.fourthChildAdultNAmeTxt.layer.borderWidth = 1
        self.fourthChildAdultNAmeTxt.setLeftPaddingPoints(15)
        self.fourthChildDobTxt.layer.cornerRadius =  20
        self.fourthChildDobTxt.layer.borderWidth = 1
        self.fourthChildDobTxt.setLeftPaddingPoints(15)
        self.fourthChildOccupationView.layer.cornerRadius =  20
        self.fourthChildOccupationView.layer.borderWidth = 1
        self.fourthChildWeightTxt.layer.cornerRadius =  20
        self.fourthChildWeightTxt.layer.borderWidth = 1
        self.fourthChildWeightTxt.setLeftPaddingPoints(15)
        self.fourthChildAdultInchesView.layer.cornerRadius =  20
        self.fourthChildAdultInchesView.layer.borderWidth = 1
        self.fourthChildAdultFitView.layer.cornerRadius =  20
        self.fourthChildAdultFitView.layer.borderWidth = 1
        self.fourthChildbmi_Txt.layer.cornerRadius =  20
        self.fourthChildbmi_Txt.layer.borderWidth = 1
        self.fourthChildbmi_Txt.setLeftPaddingPoints(15)
        self.fourthChildGenderTxt.layer.cornerRadius =  20
        self.fourthChildGenderTxt.layer.borderWidth = 1
        self.fourthChildGenderTxt.setLeftPaddingPoints(15)
        self.fourthChildRelation_Txt.layer.cornerRadius =  20
        self.fourthChildRelation_Txt.layer.borderWidth = 1
        self.fourthChildRelation_Txt.setLeftPaddingPoints(15)
        self.fourthChildlastname_Txt.layer.cornerRadius = 20
        self.fourthChildlastname_Txt.layer.borderWidth = 1
        //MARK: -  father Child
        self.fatherView.layer.cornerRadius =  10
        self.fatherView.layer.borderWidth =  1
        self.fatherAdultNAmeTxt.layer.cornerRadius =  20
        self.fatherAdultNAmeTxt.layer.borderWidth = 1
        self.fatherAdultNAmeTxt.setLeftPaddingPoints(15)
        self.fatherDobTxt.layer.cornerRadius =  20
        self.fatherDobTxt.layer.borderWidth = 1
        self.fatherDobTxt.setLeftPaddingPoints(15)
        self.fatherOccupationView.layer.cornerRadius =  20
        self.fatherOccupationView.layer.borderWidth = 1
        self.fatherWeightTxt.layer.cornerRadius =  20
        self.fatherWeightTxt.layer.borderWidth = 1
        self.fatherWeightTxt.setLeftPaddingPoints(15)
        self.fatherAdultInchesView.layer.cornerRadius =  20
        self.fatherAdultInchesView.layer.borderWidth = 1
        self.fatherAdultFitView.layer.cornerRadius =  20
        self.fatherAdultFitView.layer.borderWidth = 1
        self.fatherAdultbmi_Txt.layer.cornerRadius =  20
        self.fatherAdultbmi_Txt.layer.borderWidth = 1
        self.fatherAdultbmi_Txt.setLeftPaddingPoints(15)
        self.fatherGenderTxt.layer.cornerRadius =  20
        self.fatherGenderTxt.layer.borderWidth = 1
        self.fatherGenderTxt.setLeftPaddingPoints(15)
        self.fatherAdultRelationTxt.layer.cornerRadius =  20
        self.fatherAdultRelationTxt.layer.borderWidth = 1
        self.fatherAdultRelationTxt.setLeftPaddingPoints(15)
        self.fatherlastname_Txt.layer.cornerRadius = 20
        self.fatherlastname_Txt.layer.borderWidth = 1
        //MARK: -  mother Child
        self.motherView.layer.cornerRadius =  10
        self.motherView.layer.borderWidth = 1
        self.motherAdultNAmeTxt.layer.cornerRadius =  20
        self.motherAdultNAmeTxt.layer.borderWidth = 1
        self.motherAdultNAmeTxt.setLeftPaddingPoints(15)
        self.motherDobTxt.layer.cornerRadius =  20
        self.motherDobTxt.layer.borderWidth = 1
        self.motherDobTxt.setLeftPaddingPoints(15)
        self.motherOccupationView.layer.cornerRadius =  20
        self.motherOccupationView.layer.borderWidth = 1
        self.motherWeightTxt.layer.cornerRadius =  20
        self.motherWeightTxt.layer.borderWidth = 1
        self.motherWeightTxt.setLeftPaddingPoints(15)
        self.motherAdultInchesView.layer.cornerRadius =  20
        self.motherAdultInchesView.layer.borderWidth = 1
        self.motherAdultFitView.layer.cornerRadius =  20
        self.motherAdultFitView.layer.borderWidth = 1
        self.motherAdultbmi_Txt.layer.cornerRadius =  20
        self.motherAdultbmi_Txt.layer.borderWidth = 1
        self.motherAdultbmi_Txt.setLeftPaddingPoints(15)
        self.motherGenderTxt.layer.cornerRadius =  20
        self.motherGenderTxt.layer.borderWidth = 1
        self.motherGenderTxt.setLeftPaddingPoints(15)
        self.motherAdultRelation_Txt.layer.cornerRadius =  20
        self.motherAdultRelation_Txt.layer.borderWidth = 1
        self.motherAdultRelation_Txt.setLeftPaddingPoints(15)
        self.motherChildlastname_Txt.layer.cornerRadius = 20
        self.motherChildlastname_Txt.layer.borderWidth = 1
        //MARK: -  grand father  Child
        self.gFatherView.layer.cornerRadius =  10
        self.gFatherView.layer.borderWidth = 1
        self.gFatherAdultNAmeTxt.layer.cornerRadius =  20
        self.gFatherAdultNAmeTxt.layer.borderWidth = 1
        self.gFatherAdultNAmeTxt.setLeftPaddingPoints(15)
        self.gFatherDobTxt.layer.cornerRadius =  20
        self.gFatherDobTxt.layer.borderWidth = 1
        self.gFatherDobTxt.setLeftPaddingPoints(15)
        self.gFatherOccupationView.layer.cornerRadius =  20
        self.gFatherOccupationView.layer.borderWidth = 1
        self.gFatherWeightTxt.layer.cornerRadius =  20
        self.gFatherWeightTxt.layer.borderWidth = 1
        self.gFatherWeightTxt.setLeftPaddingPoints(15)
        self.gFatherAdultInchesView.layer.cornerRadius =  20
        self.gFatherAdultInchesView.layer.borderWidth = 1
        self.gFatherAdultFitView.layer.cornerRadius =  20
        self.gFatherAdultFitView.layer.borderWidth = 1
        self.gFatherAdultbmi_Txt.layer.cornerRadius =  20
        self.gFatherAdultbmi_Txt.layer.borderWidth = 1
        self.gFatherAdultbmi_Txt.setLeftPaddingPoints(15)
        self.gFatherGenderTxt.layer.cornerRadius =  20
        self.gFatherGenderTxt.layer.borderWidth = 1
        self.gFatherAdultRelationTxt.layer.cornerRadius =  20
        self.gFatherAdultRelationTxt.layer.borderWidth = 1
        self.gFatherChildlastname_Txt.layer.cornerRadius = 20
        self.gFatherChildlastname_Txt.layer.borderWidth = 1
        //MARK: -  grand mother  Child
        self.gMotherView.layer.cornerRadius =  10
        self.gMotherView.layer.borderWidth = 1
        self.gMotherAdultNAmeTxt.layer.cornerRadius =  20
        self.gMotherAdultNAmeTxt.layer.borderWidth = 1
        self.gMotherAdultNAmeTxt.setLeftPaddingPoints(15)
        self.gMotherDobTxt.layer.cornerRadius =  20
        self.gMotherDobTxt.layer.borderWidth = 1
        self.gMotherDobTxt.setLeftPaddingPoints(15)
        self.gMotherOccupationView.layer.cornerRadius =  20
        self.gMotherOccupationView.layer.borderWidth = 1
        self.gMotherWeightTxt.layer.cornerRadius =  20
        self.gMotherWeightTxt.layer.borderWidth = 1
        self.gMotherWeightTxt.setLeftPaddingPoints(15)
        self.gMotherAdultInchesView.layer.cornerRadius =  20
        self.gMotherAdultInchesView.layer.borderWidth = 1
        self.gMotherAdultFitView.layer.cornerRadius =  20
        self.gMotherAdultFitView.layer.borderWidth = 1
        self.gMotherAdultbmi_Txt.layer.cornerRadius =  20
        self.gMotherAdultbmi_Txt.layer.borderWidth = 1
        self.gMotherAdultbmi_Txt.setLeftPaddingPoints(15)
        self.gMotherGenderTxt.layer.cornerRadius =  20
        self.gMotherGenderTxt.layer.borderWidth = 1
        self.gMotherGenderTxt.setLeftPaddingPoints(15)
        self.gMotherAdultRelationTxt.layer.cornerRadius =  20
        self.gMotherAdultRelationTxt.layer.borderWidth = 1
        self.gMotherAdultRelationTxt.setLeftPaddingPoints(15)
        self.gMotherChildlastname_Txt.layer.cornerRadius = 20
        self.gMotherChildlastname_Txt.layer.borderWidth = 1
        
        
        //MARK: -  hide screens
        //        self.spouseView.isHidden =  true
        //        self.spouseNsView.constant = 0
        //        self.firstChildView.isHidden =  true
        //        self.firstChildNsView.constant =  0
        //        self.secondChildView.isHidden =  true
        //        self.secondChildNsView.constant =  0
        //        self.thirdChildView.isHidden =  true
        //        self.thirdChildNsView.constant =  0
        //        self.fourthChildView.isHidden =  true
        //        self.fourthChildNsView.constant =  0
        //        self.fatherView.isHidden = true
        //        self.fatherNsView.constant = 0
        //        self.motherView.isHidden = true
        //        self.motherNsView.constant = 0
        //        self.gFatherView.isHidden = true
        //        self.gFatherNsView.constant = 0
        //        self.gMotherView.isHidden = true
        //        self.gMotherNsView.constant = 0
        
        self.spouseDetailsView.isHidden =  true
        self.spouseDetailsNsView.constant = 0
        self.firstChildDetailsView.isHidden =  true
        self.firstChildDetailsNsView.constant =  0
        self.secondChildDetailsView.isHidden =  true
        self.secondChildDetailsNsView.constant =  0
        self.thirdChildDetailsView.isHidden =  true
        self.thirdChildDetailsNsView.constant =  0
        self.fourthChildDetailsView.isHidden =  true
        self.fourthChildDetailsNsView.constant =  0
        self.fatherDetailsView.isHidden = true
        self.fatherDetailsNsView.constant = 0
        self.motherDetailsView.isHidden = true
        self.motherDetailsNsView.constant = 0
        self.gFatherDetailsView.isHidden = true
        self.gFatherDetailsNsView.constant = 0
        self.gMotherDetailsView.isHidden = true
        self.gMotherDetailsNsView.constant = 0
        self.fatherAdultRelationTxt.text = "Father"
        self.motherAdultRelation_Txt.text = "Mother"
        self.gFatherAdultRelationTxt.text = "Grand Father"
        self.gMotherAdultRelationTxt.text = "Grand Mother"
        self.fatherGenderTxt.text = "Male"
        self.motherGenderTxt.text = "Felame"
        self.gFatherGenderTxt.text = "Male"
        self.gMotherGenderTxt.text = "Female"
        self.pinCode_Txt.setLeftPaddingPoints(15)
        self.scroll_NsView.constant = 600
        
        //MARK: -  desable the text field
//        self.Bmi_Txt.isUserInteractionEnabled =  false
        self.firstChildbmi_Txt.isUserInteractionEnabled =  false
        self.secondChildsbmi_Txt.isUserInteractionEnabled =  false
        self.thirdChildbmi_Txt.isUserInteractionEnabled =  false
        self.fourthChildbmi_Txt.isUserInteractionEnabled =  false
        self.fatherAdultbmi_Txt.isUserInteractionEnabled =  false
        self.motherAdultbmi_Txt.isUserInteractionEnabled =  false
        self.gFatherAdultbmi_Txt.isUserInteractionEnabled =  false
        self.gMotherAdultbmi_Txt.isUserInteractionEnabled =  false
        self.spousesAdultbmi_Txt.isUserInteractionEnabled =  false
    }
    //MARK: -  func for the save data
    func retrieveData(){
     //   self.Nametxt?.text = ProjectUtils.getUserName()
    //    self.Emailtxt.text = String(describing: ProjectUtils.getEmailID())
    //    self.Nametxt.text = UserDefaults.standard.string(forKey: "selfDob_Txt") ?? ""

        self.totalpremiumLbl.text = UserDefaults.standard.string(forKey: "TotalPremium") ?? ""
        //self.policyType =  UserDefaults.standard.string(forKey: "policyType") ?? ""
        //self.otpCoverName = UserDefaults.standard.string(forKey: "CoveredName") ?? ""
        self.selfStatus   = UserDefaults.standard.string(forKey: "selfAdult") ?? ""
        self.spouseStatus  = UserDefaults.standard.string(forKey: "spouseAdult") ?? ""
        self.motherStatus  = UserDefaults.standard.string(forKey: "motherAdult") ?? ""
        self.fatherStatus  = UserDefaults.standard.string(forKey: "fatherAdult") ?? ""
        self.motherInLawStatus = UserDefaults.standard.string( forKey: "gMotherAdult") ?? ""
        self.fatherInLawStatus = UserDefaults.standard.string( forKey: "gFatherAdult") ?? ""
        self.fChildStatus =  UserDefaults.standard.string(forKey: "childOne") ?? ""
        self.sChildstatus =  UserDefaults.standard.string(forKey: "childTwo") ?? ""
        self.tChldStatus =  UserDefaults.standard.string(forKey: "childThree") ?? ""
        self.fourthChildStatus =  UserDefaults.standard.string(forKey: "childFour") ?? ""
        
        if self.selfStatus == "SelfAdult"{
            self.PersonalInfoView.isHidden =  false
            self.personalInfoNsView.constant = 55
            self.gMotherDoubleNSView.constant = 0
            self.gFatherDoubleNSView.constant = 0
            self.motherDoubleNsView.constant = 0
            self.fatherDoubleNsView.constant = 0
            self.frChildDoubleNSView.constant = 0
            self.tChildDoubleNSView.constant = 0
            self.sChildDoubleNSVIew.constant = 0
            self.fChildDoubleNSView.constant = 0
            self.spouseDoubleNsView.constant = 0
            self.nomineeNSView.constant = 0
            self.gmotherBottmNSView.constant = 0
            self.gfatherBottmNSView.constant = 0
            self.motherBottmNSView.constant = 0
            self.fatherBottmNsView.constant = 0
            self.frChildBottmNSView.constant = 0
            self.tChildBottmNsView.constant = 0
            self.sChildTopNSVIew.constant = 0
            self.fChildBottmNsView.constant = 0
            self.spouseBottmNsView.constant = 0
        }else{
            self.PersonalInfoView.isHidden =  true
            self.personalInfoNsView.constant = 0
        }
        if self.spouseStatus == "SpouseAdult"{
            self.spouseView.isHidden =  false
            self.spouseNsView.constant = 55
            self.gMotherDoubleNSView.constant = 0
            self.gFatherDoubleNSView.constant = 0
            self.motherDoubleNsView.constant = 0
            self.fatherDoubleNsView.constant = 0
            self.frChildDoubleNSView.constant = 0
            self.tChildDoubleNSView.constant = 0
            self.sChildDoubleNSVIew.constant = 0
            self.fChildDoubleNSView.constant = 0
            self.spouseDoubleNsView.constant = 8
            self.nomineeNSView.constant = 8
            self.gmotherBottmNSView.constant = 0
            self.gfatherBottmNSView.constant = 0
            self.motherBottmNSView.constant = 0
            self.fatherBottmNsView.constant = 0
            self.frChildBottmNSView.constant = 0
            self.tChildBottmNsView.constant = 0
            self.sChildTopNSVIew.constant = 0
            self.fChildBottmNsView.constant = 0
            self.spouseBottmNsView.constant = 8
        }else{
            self.spouseView.isHidden =  true
            self.spouseNsView.constant = 0
            self.gMotherDoubleNSView.constant = 0
            self.gFatherDoubleNSView.constant = 0
            self.motherDoubleNsView.constant = 0
            self.fatherDoubleNsView.constant = 0
            self.frChildDoubleNSView.constant = 0
            self.tChildDoubleNSView.constant = 0
            self.sChildDoubleNSVIew.constant = 0
            self.fChildDoubleNSView.constant = 0
            self.spouseDoubleNsView.constant = 0
            self.nomineeNSView.constant = 8
            self.gmotherBottmNSView.constant = 0
            self.gfatherBottmNSView.constant = 0
            self.motherBottmNSView.constant = 0
            self.fatherBottmNsView.constant = 0
            self.frChildBottmNSView.constant = 0
            self.tChildBottmNsView.constant = 0
            self.sChildTopNSVIew.constant = 0
            self.fChildBottmNsView.constant = 0
            self.spouseBottmNsView.constant = 0
        }
        if self.motherStatus == "motherAdult"{
            self.motherView.isHidden =  false
            self.motherNsView.constant = 55
            self.gMotherDoubleNSView.constant = 0
            self.gFatherDoubleNSView.constant = 0
            self.motherDoubleNsView.constant = 8
            self.fatherDoubleNsView.constant = 0
            self.frChildDoubleNSView.constant = 0
            self.tChildDoubleNSView.constant = 0
            self.sChildDoubleNSVIew.constant = 0
            self.fChildDoubleNSView.constant = 0
            self.spouseDoubleNsView.constant = 0
            self.nomineeNSView.constant = 8
            self.gmotherBottmNSView.constant = 0
            self.gfatherBottmNSView.constant = 0
            self.motherBottmNSView.constant = 8
            self.fatherBottmNsView.constant = 0
            self.frChildBottmNSView.constant = 0
            self.tChildBottmNsView.constant = 0
            self.sChildTopNSVIew.constant = 0
            self.fChildBottmNsView.constant = 0
            self.spouseBottmNsView.constant = 0
        }else{
            self.motherView.isHidden =  true
            self.motherNsView.constant = 0
            self.gMotherDoubleNSView.constant = 0
            self.gFatherDoubleNSView.constant = 0
            self.motherDoubleNsView.constant = 0
            self.fatherDoubleNsView.constant = 0
            self.frChildDoubleNSView.constant = 0
            self.tChildDoubleNSView.constant = 0
            self.sChildDoubleNSVIew.constant = 0
            self.fChildDoubleNSView.constant = 0
            self.spouseDoubleNsView.constant = 0
            self.nomineeNSView.constant = 0
            self.gmotherBottmNSView.constant = 0
            self.gfatherBottmNSView.constant = 0
            self.motherBottmNSView.constant = 0
            self.fatherBottmNsView.constant = 0
            self.frChildBottmNSView.constant = 0
            self.tChildBottmNsView.constant = 0
            self.sChildTopNSVIew.constant = 0
            self.fChildBottmNsView.constant = 0
            self.spouseBottmNsView.constant = 0
        }
        if self.fatherStatus == "fatherAdult"{
            self.fatherView.isHidden =  false
            self.fatherNsView.constant = 55
            self.gMotherDoubleNSView.constant = 0
            self.gFatherDoubleNSView.constant = 0
            self.motherDoubleNsView.constant = 0
            self.fatherDoubleNsView.constant = 8
            self.frChildDoubleNSView.constant = 0
            self.tChildDoubleNSView.constant = 0
            self.sChildDoubleNSVIew.constant = 0
            self.fChildDoubleNSView.constant = 0
            self.spouseDoubleNsView.constant = 0
            self.nomineeNSView.constant = 8
            self.gmotherBottmNSView.constant = 0
            self.gfatherBottmNSView.constant = 0
            self.motherBottmNSView.constant = 0
            self.fatherBottmNsView.constant = 8
            self.frChildBottmNSView.constant = 0
            self.tChildBottmNsView.constant = 0
            self.sChildTopNSVIew.constant = 0
            self.fChildBottmNsView.constant = 0
            self.spouseBottmNsView.constant = 0
        }else{
            self.fatherView.isHidden =  true
            self.fatherNsView.constant = 0
            self.gMotherDoubleNSView.constant = 0
            self.gFatherDoubleNSView.constant = 0
            self.motherDoubleNsView.constant = 0
            self.fatherDoubleNsView.constant = 0
            self.frChildDoubleNSView.constant = 0
            self.tChildDoubleNSView.constant = 0
            self.sChildDoubleNSVIew.constant = 0
            self.fChildDoubleNSView.constant = 0
            self.spouseDoubleNsView.constant = 0
            self.nomineeNSView.constant = 0
            self.gmotherBottmNSView.constant = 0
            self.gfatherBottmNSView.constant = 0
            self.motherBottmNSView.constant = 0
            self.fatherBottmNsView.constant = 0
            self.frChildBottmNSView.constant = 0
            self.tChildBottmNsView.constant = 0
            self.sChildTopNSVIew.constant = 0
            self.fChildBottmNsView.constant = 0
            self.spouseBottmNsView.constant = 0
        }
        if self.motherInLawStatus == "motherInLaw"{
            self.gMotherView.isHidden =  false
            self.gMotherNsView.constant = 55
            self.gMotherDoubleNSView.constant = 8
            self.gFatherDoubleNSView.constant = 0
            self.motherDoubleNsView.constant = 0
            self.fatherDoubleNsView.constant = 0
            self.frChildDoubleNSView.constant = 0
            self.tChildDoubleNSView.constant = 0
            self.sChildDoubleNSVIew.constant = 0
            self.fChildDoubleNSView.constant = 0
            self.spouseDoubleNsView.constant = 0
            self.nomineeNSView.constant = 8
            self.gmotherBottmNSView.constant = 8
            self.gfatherBottmNSView.constant = 0
            self.motherBottmNSView.constant = 0
            self.fatherBottmNsView.constant = 0
            self.frChildBottmNSView.constant = 0
            self.tChildBottmNsView.constant = 0
            self.sChildTopNSVIew.constant = 0
            self.fChildBottmNsView.constant = 0
            self.spouseBottmNsView.constant = 0
        }else{
            self.gMotherView.isHidden =  true
            self.gMotherNsView.constant = 0
            self.gMotherDoubleNSView.constant = 0
            self.gFatherDoubleNSView.constant = 0
            self.motherDoubleNsView.constant = 0
            self.fatherDoubleNsView.constant = 0
            self.frChildDoubleNSView.constant = 0
            self.tChildDoubleNSView.constant = 0
            self.sChildDoubleNSVIew.constant = 0
            self.fChildDoubleNSView.constant = 0
            self.spouseDoubleNsView.constant = 0
            self.nomineeNSView.constant = 0
            self.gmotherBottmNSView.constant = 0
            self.gfatherBottmNSView.constant = 0
            self.motherBottmNSView.constant = 0
            self.fatherBottmNsView.constant = 0
            self.frChildBottmNSView.constant = 0
            self.tChildBottmNsView.constant = 0
            self.sChildTopNSVIew.constant = 0
            self.fChildBottmNsView.constant = 0
            self.spouseBottmNsView.constant = 0
        }
        if self.fatherInLawStatus == "FatherInLaw"{
            self.gFatherView.isHidden =  false
            self.gFatherNsView.constant = 55
            self.gMotherDoubleNSView.constant = 0
            self.gFatherDoubleNSView.constant = 8
            self.motherDoubleNsView.constant = 0
            self.fatherDoubleNsView.constant = 0
            self.frChildDoubleNSView.constant = 0
            self.tChildDoubleNSView.constant = 0
            self.sChildDoubleNSVIew.constant = 0
            self.fChildDoubleNSView.constant = 0
            self.spouseDoubleNsView.constant = 0
            self.nomineeNSView.constant = 8
            self.gmotherBottmNSView.constant = 0
            self.gfatherBottmNSView.constant = 8
            self.motherBottmNSView.constant = 0
            self.fatherBottmNsView.constant = 0
            self.frChildBottmNSView.constant = 0
            self.tChildBottmNsView.constant = 0
            self.sChildTopNSVIew.constant = 0
            self.fChildBottmNsView.constant = 0
            self.spouseBottmNsView.constant = 0
        }else{
            self.gFatherView.isHidden =  true
            self.gFatherNsView.constant = 0
            self.gMotherDoubleNSView.constant = 0
            self.gFatherDoubleNSView.constant = 0
            self.motherDoubleNsView.constant = 0
            self.fatherDoubleNsView.constant = 0
            self.frChildDoubleNSView.constant = 0
            self.tChildDoubleNSView.constant = 0
            self.sChildDoubleNSVIew.constant = 0
            self.fChildDoubleNSView.constant = 0
            self.spouseDoubleNsView.constant = 0
            self.nomineeNSView.constant = 0
            self.gmotherBottmNSView.constant = 0
            self.gfatherBottmNSView.constant = 0
            self.motherBottmNSView.constant = 0
            self.fatherBottmNsView.constant = 0
            self.frChildBottmNSView.constant = 0
            self.tChildBottmNsView.constant = 0
            self.sChildTopNSVIew.constant = 0
            self.fChildBottmNsView.constant = 0
            self.spouseBottmNsView.constant = 0
        }
        if self.fChildStatus == "firstChild"{
            self.firstChildView.isHidden =  false
            self.firstChildNsView.constant = 55
            self.gMotherDoubleNSView.constant = 0
            self.gFatherDoubleNSView.constant = 0
            self.motherDoubleNsView.constant = 0
            self.fatherDoubleNsView.constant = 0
            self.frChildDoubleNSView.constant = 0
            self.tChildDoubleNSView.constant = 0
            self.sChildDoubleNSVIew.constant = 0
            self.fChildDoubleNSView.constant = 8
            self.spouseDoubleNsView.constant = 0
            self.nomineeNSView.constant = 8
            self.gmotherBottmNSView.constant = 0
            self.gfatherBottmNSView.constant = 0
            self.motherBottmNSView.constant = 0
            self.fatherBottmNsView.constant = 0
            self.frChildBottmNSView.constant = 0
            self.tChildBottmNsView.constant = 0
            self.sChildTopNSVIew.constant = 0
            self.fChildBottmNsView.constant = 8
            self.spouseBottmNsView.constant = 0
        }else{
            self.firstChildView.isHidden =  true
            self.firstChildNsView.constant = 0
            self.gMotherDoubleNSView.constant = 0
            self.gFatherDoubleNSView.constant = 0
            self.motherDoubleNsView.constant = 0
            self.fatherDoubleNsView.constant = 0
            self.frChildDoubleNSView.constant = 0
            self.tChildDoubleNSView.constant = 0
            self.sChildDoubleNSVIew.constant = 0
            self.fChildDoubleNSView.constant = 0
            self.spouseDoubleNsView.constant = 0
            self.nomineeNSView.constant = 0
            self.gmotherBottmNSView.constant = 0
            self.gfatherBottmNSView.constant = 0
            self.motherBottmNSView.constant = 0
            self.fatherBottmNsView.constant = 0
            self.frChildBottmNSView.constant = 0
            self.tChildBottmNsView.constant = 0
            self.sChildTopNSVIew.constant = 0
            self.fChildBottmNsView.constant = 0
            self.spouseBottmNsView.constant = 0
        }
        if self.sChildstatus == "secondChild"{
            self.secondChildView.isHidden =  false
            self.secondChildNsView.constant = 55
            self.gMotherDoubleNSView.constant = 0
            self.gFatherDoubleNSView.constant = 0
            self.motherDoubleNsView.constant = 0
            self.fatherDoubleNsView.constant = 0
            self.frChildDoubleNSView.constant = 0
            self.tChildDoubleNSView.constant = 0
            self.sChildDoubleNSVIew.constant = 8
            self.fChildDoubleNSView.constant = 0
            self.spouseDoubleNsView.constant = 0
            self.nomineeNSView.constant = 8
            self.gmotherBottmNSView.constant = 0
            self.gfatherBottmNSView.constant = 0
            self.motherBottmNSView.constant = 0
            self.fatherBottmNsView.constant = 0
            self.frChildBottmNSView.constant = 0
            self.tChildBottmNsView.constant = 0
            self.sChildTopNSVIew.constant = 8
            self.fChildBottmNsView.constant = 0
            self.spouseBottmNsView.constant = 0
        }else{
            self.secondChildView.isHidden =  true
            self.secondChildNsView.constant = 0
            self.gMotherDoubleNSView.constant = 0
            self.gFatherDoubleNSView.constant = 0
            self.motherDoubleNsView.constant = 0
            self.fatherDoubleNsView.constant = 0
            self.frChildDoubleNSView.constant = 0
            self.tChildDoubleNSView.constant = 0
            self.sChildDoubleNSVIew.constant = 0
            self.fChildDoubleNSView.constant = 0
            self.spouseDoubleNsView.constant = 0
            self.nomineeNSView.constant = 0
            self.gmotherBottmNSView.constant = 0
            self.gfatherBottmNSView.constant = 0
            self.motherBottmNSView.constant = 0
            self.fatherBottmNsView.constant = 0
            self.frChildBottmNSView.constant = 0
            self.tChildBottmNsView.constant = 0
            self.sChildTopNSVIew.constant = 0
            self.fChildBottmNsView.constant = 0
            self.spouseBottmNsView.constant = 0
        }
        if self.tChldStatus == "thirdChild"{
            self.thirdChildView.isHidden =  false
            self.thirdChildNsView.constant = 55
            self.gMotherDoubleNSView.constant = 0
            self.gFatherDoubleNSView.constant = 0
            self.motherDoubleNsView.constant = 0
            self.fatherDoubleNsView.constant = 0
            self.frChildDoubleNSView.constant = 0
            self.tChildDoubleNSView.constant = 8
            self.sChildDoubleNSVIew.constant = 0
            self.fChildDoubleNSView.constant = 0
            self.spouseDoubleNsView.constant = 0
            self.nomineeNSView.constant = 8
            self.gmotherBottmNSView.constant = 0
            self.gfatherBottmNSView.constant = 0
            self.motherBottmNSView.constant = 0
            self.fatherBottmNsView.constant = 0
            self.frChildBottmNSView.constant = 0
            self.tChildBottmNsView.constant = 8
            self.sChildTopNSVIew.constant = 0
            self.fChildBottmNsView.constant = 0
            self.spouseBottmNsView.constant = 0
        }else{
            self.thirdChildView.isHidden =  true
            self.thirdChildNsView.constant = 0
            self.gMotherDoubleNSView.constant = 0
            self.gFatherDoubleNSView.constant = 0
            self.motherDoubleNsView.constant = 0
            self.fatherDoubleNsView.constant = 0
            self.frChildDoubleNSView.constant = 0
            self.tChildDoubleNSView.constant = 0
            self.sChildDoubleNSVIew.constant = 0
            self.fChildDoubleNSView.constant = 0
            self.spouseDoubleNsView.constant = 0
            self.nomineeNSView.constant = 0
            self.gmotherBottmNSView.constant = 0
            self.gfatherBottmNSView.constant = 0
            self.motherBottmNSView.constant = 0
            self.fatherBottmNsView.constant = 0
            self.frChildBottmNSView.constant = 0
            self.tChildBottmNsView.constant = 0
            self.sChildTopNSVIew.constant = 0
            self.fChildBottmNsView.constant = 0
            self.spouseBottmNsView.constant = 0
        }
        if self.fourthChildStatus == "fourthChild"{
            self.fourthChildView.isHidden =  false
            self.fourthChildNsView.constant = 55
            self.fourthChildView.isHidden =  true
            self.fourthChildNsView.constant = 0
            self.gMotherDoubleNSView.constant = 0
            self.gFatherDoubleNSView.constant = 0
            self.motherDoubleNsView.constant = 0
            self.fatherDoubleNsView.constant = 0
            self.frChildDoubleNSView.constant = 8
            self.tChildDoubleNSView.constant = 0
            self.sChildDoubleNSVIew.constant = 0
            self.fChildDoubleNSView.constant = 0
            self.spouseDoubleNsView.constant = 0
            self.nomineeNSView.constant = 8
            self.gmotherBottmNSView.constant = 0
            self.gfatherBottmNSView.constant = 0
            self.motherBottmNSView.constant = 0
            self.fatherBottmNsView.constant = 0
            self.frChildBottmNSView.constant = 8
            self.tChildBottmNsView.constant = 0
            self.sChildTopNSVIew.constant = 0
            self.fChildBottmNsView.constant = 0
            self.spouseBottmNsView.constant = 0
        }else{
            self.fourthChildView.isHidden =  true
            self.fourthChildNsView.constant = 0
            self.gMotherDoubleNSView.constant = 0
            self.gFatherDoubleNSView.constant = 0
            self.motherDoubleNsView.constant = 0
            self.fatherDoubleNsView.constant = 0
            self.frChildDoubleNSView.constant = 0
            self.tChildDoubleNSView.constant = 0
            self.sChildDoubleNSVIew.constant = 0
            self.fChildDoubleNSView.constant = 0
            self.spouseDoubleNsView.constant = 0
            self.nomineeNSView.constant = 0
            self.gmotherBottmNSView.constant = 0
            self.gfatherBottmNSView.constant = 0
            self.motherBottmNSView.constant = 0
            self.fatherBottmNsView.constant = 0
            self.frChildBottmNSView.constant = 0
            self.tChildBottmNsView.constant = 0
            self.sChildTopNSVIew.constant = 0
            self.fChildBottmNsView.constant = 0
            self.spouseBottmNsView.constant = 0
        }
    }
    func saveData(){
        UserDefaults.standard.set(self.selfOccupation,   forKey: "selfOccupation")
        UserDefaults.standard.set(self.spouseOccupation, forKey: "spouseOccupation")
        UserDefaults.standard.set(self.motherOccupation, forKey: "motherOccupation")
        UserDefaults.standard.set(self.fatherOccupation, forKey: "fatherOccupation")
        UserDefaults.standard.set(self.gMotherOccupation, forKey:"gMotherOccupation")
        UserDefaults.standard.set(self.gFatherOccupation, forKey:"gFatherOccupation")
        UserDefaults.standard.set(self.selfGender,   forKey: "selfGender")
        UserDefaults.standard.set(self.spouseGender, forKey: "spouseGender")
        UserDefaults.standard.set(self.motherGender, forKey: "motherGender")
        UserDefaults.standard.set(self.fatherGender, forKey: "fatherGender")
        UserDefaults.standard.set(self.gMotherGender, forKey:"gMotherGender")
        UserDefaults.standard.set(self.gFatherGender, forKey:"gFatherGender")
        UserDefaults.standard.set(self.selfRelation,   forKey: "selfRelation")
        UserDefaults.standard.set(self.spouseRelation, forKey: "spouseRelation")
        UserDefaults.standard.set(self.motherRelation, forKey: "motherRelation")
        UserDefaults.standard.set(self.fatherRelation, forKey: "fatherRelation")
        UserDefaults.standard.set(self.gMotherRelation, forKey:"gMotherRelation")
        UserDefaults.standard.set(self.gFatherRelation, forKey:"gFatherRelation")
    }
}

extension PersonalInformationVC{
    //MARK: - func for bmi Calculation
    func firstAdult(){
        if !inches.isEmpty{
         h = Double(inches)!
        }
        if !firstAdultWeight.isEmpty{
            w = Double(firstAdultWeight)!
        }
        if !fit.isEmpty{
            p = Double(fit)!
        }
        let bmiM = BMIModel(height: h, weight: w,pount: p)
        self.bmical = String(bmiM.bmi())
        self.Bmi_Txt.text = self.bmical
        print(self.bmical)
        self.firstAdultValidation()
       }
    func firstAdultValidation(){
      if String(bmical.count) < "18" {
            alert(message: "First Adult under weight", title: "Messae")
      }else if String(bmical.count) < "25"{
       alert(message: "First Adults are heavy weight",title: "Message")
        }else{
        String(bmical.count) >= "18.5" && String(bmical) < "25"
        }
        }
    //MARK: - func for bmi Calculation
    func spousesBmi (){
        if !inches.isEmpty{
         h = Double(inches)!
        }
        if !firstAdultWeight.isEmpty{
            w = Double(spouseAdultWeight)!
        }
        if !fit.isEmpty{
            p = Double(fit)!
        }
        
        let bmiM = BMIModel(height: h, weight: w,pount: p)
        self.bmical = String(bmiM.bmi())
        self.spousesAdultbmi_Txt.text = self.bmical
        print(self.bmical)
        self.spousesBmiValidation()
       }
    func spousesBmiValidation(){
        if String(bmical.count) < "18" {
              alert(message: "Spouses are under weight", title: "Messae")
        }else if String(bmical.count) < "25"{
         alert(message: "Spouses are are heavy weight",title: "Message")
          }else{
          String(bmical.count) >= "18.5" && String(bmical) < "25"
          }
        }
    //MARK: - func for bmi Calculation
    func firstChildBmi (){
        if !inches.isEmpty{
         h = Double(inches)!
        }
        if !firstAdultWeight.isEmpty{
            w = Double(firstChildWeight)!
        }
        if !fit.isEmpty{
            p = Double(fit)!
        }
        let bmiM = BMIModel(height: h, weight: w,pount: p)
        self.bmical = String(bmiM.bmi())
        self.firstChildbmi_Txt.text = self.bmical
        self.firstChildBmiValidation()
       }
    func firstChildBmiValidation(){
        if String(bmical.count) < "18" {
              alert(message: "First Child in under weight", title: "Messae")
        }else if String(bmical.count) < "25"{
         alert(message: "First Child are heavy weight",title: "Message")
          }else{
          String(bmical.count) >= "18.5" && String(bmical) < "25"
          }
        }
    //MARK: - func for second child bmi Calculation
    func secondChildBmi (){
        if !inches.isEmpty{
         h = Double(inches)!
        }
        if !firstAdultWeight.isEmpty{
            w = Double(secondChildWeight)!
        }
        if !fit.isEmpty{
            p = Double(fit)!
        }
        
        let bmiM = BMIModel(height: h, weight: w,pount: p)
        self.bmical = String(bmiM.bmi())
        self.secondChildsbmi_Txt.text = self.bmical
//        self.secondChildBmiValidation()
       }
    func secondChildBmiValidation(){
        if String(bmical.count) < "18" {
              alert(message: "Second Child are under weight", title: "Messae")
        }else if String(bmical.count) < "25"{
         alert(message: "Second Child are are heavy weight",title: "Message")
          }else{
          String(bmical.count) >= "18.5" && String(bmical) < "25"
          }
        }
    //MARK: - func for  third child bmi Calculation
    func thirdChildBmi(){
        if !inches.isEmpty{
         h = Double(inches)!
        }
        if !firstAdultWeight.isEmpty{
            w = Double(thirdChildWeight)!
        }
        if !fit.isEmpty{
            p = Double(fit)!
        }
        let bmiM = BMIModel(height: h, weight: w,pount: p)
        self.bmical = String(bmiM.bmi())
        self.thirdChildbmi_Txt.text = self.bmical
        self.thirdChildBmiValidation()
       }
    func thirdChildBmiValidation(){
        if String(bmical.count) < "18" {
              alert(message: "third Child are under weight", title: "Messae")
        }else if String(bmical.count) < "25"{
         alert(message: "third Child are are heavy weight",title: "Message")
          }else{
          String(bmical.count) >= "18.5" && String(bmical) < "25"
          }
        }
    //MARK: - func for fourth child bmi Calculation
    func fourthChildBmi (){
        let dd = fourthChildAdultInchesBtn.title(for: .normal)
        if !inches.isEmpty{
         h = Double(inches)!
        }
        if !firstAdultWeight.isEmpty{
            w = Double(fourthChildWeight)!
        }
        if !fit.isEmpty{
            p = Double(fit)!
        }
        let bmiM = BMIModel(height: h, weight: w,pount: p)
        self.bmical = String(bmiM.bmi())
        self.fourthChildbmi_Txt.text = self.bmical
        self.fourthChildBmiValidation()
       }
    func fourthChildBmiValidation(){
        if String(bmical.count) < "18" {
            alert(message: "Fourth Child are under weight", title: "Messae")
        }else if String(bmical.count) < "25"{
            alert(message: "Fourth Child are are heavy weight",title: "Message")
        }else{
            String(bmical.count) >= "18.5" && String(bmical) < "25"
        }
       
    }
}

//MARK: -  extension for the
extension PersonalInformationVC{
    @IBAction func viewAllAction(_ sender: UIButton){
//        let nextVc =  UIStoryboard.init(name: "Health", bundle: nil).instantiateViewController(withIdentifier: "NewChiHealthBrakup_Vc") as! NewChiHealthBrakup_Vc
//        self.navigationController?.present(nextVc, animated: true)
    }
    //MARK: -  all button Action
    @IBAction func InformationAction(_ sender: Any) {
        if self.personalInfoArrowBtn.isSelected{
            self.personalInfoArrowBtn.setImage(UIImage(named: "upArrow"), for: .normal)
            self.PersonalInfoView.isHidden = false
            self.personalInfoNsView.constant =  1564
             self.scroll_NsView.constant = 2500
        }else{
            self.personalInfoArrowBtn.setImage(UIImage(named: "downArrow"), for: .normal)
            self.PersonalInfoView.isHidden = true
            self.personalInfoNsView.constant =  0
          self.scroll_NsView.constant = 900
        }
        self.personalInfoArrowBtn.isSelected = !self.personalInfoArrowBtn.isSelected
    }
    @IBAction func spouseAction(_ sender: Any){
        if self.spouseBtn.isSelected{
            self.spouseBtnImg.image =  UIImage(named: "downArrow")
            self.spouseDetailsView.isHidden = true
            self.spouseDetailsNsView.constant = 0
            self.scroll_NsView.constant = 900
        }else{
           
            self.spouseBtnImg.image =  UIImage(named: "upArrow")
            self.spouseDetailsView.isHidden = false
            self.spouseDetailsNsView.constant = 820
             self.scroll_NsView.constant = 4000
          }
        self.spouseBtn.isSelected = !self.spouseBtn.isSelected
      }
    @IBAction func firstChildAction(_ sender: Any){
        if self.firstChildBtn.isSelected{
            self.firstchildBTnImg.image =  UIImage(named: "downArrow")
            self.firstChildDetailsView.isHidden = true
            self.firstChildDetailsNsView.constant = 0
           // self.scroll_NsView.constant = 2000
        }else{
            self.firstchildBTnImg.image =  UIImage(named: "upArrow")
            self.firstChildDetailsView.isHidden = true
            self.firstChildDetailsNsView.constant = 820
         self.scroll_NsView.constant = 5000
          }
        self.firstChildBtn.isSelected = !self.firstChildBtn.isSelected
      }
    @IBAction func secondChildAction(_ sender: Any){
        if self.secondChildBtn.isSelected{
            self.secondchildBTnImg.image =  UIImage(named: "downArrow")
            self.secondChildDetailsView.isHidden = true
            self.secondChildDetailsNsView.constant = 0
           // self.scroll_NsView.constant = 2000
        }else{
            self.secondchildBTnImg.image =  UIImage(named: "upArrow")
            self.secondChildDetailsView.isHidden = false
            self.secondChildDetailsNsView.constant = 820
            // self.scroll_NsView.constant = 1800
          }
        self.secondChildBtn.isSelected = !self.secondChildBtn.isSelected
      }
    @IBAction func thirdActionAction(_ sender: Any){
        if self.thirdChildBtn.isSelected{
            self.thirdchildBTnImg.image =  UIImage(named: "downArrow")
            self.thirdChildDetailsView.isHidden = true
            self.thirdChildDetailsNsView.constant = 0
           // self.scroll_NsView.constant = 2000
        }else{
            self.thirdchildBTnImg.image =  UIImage(named: "upArrow")
            self.thirdChildDetailsView.isHidden = false
            self.thirdChildDetailsNsView.constant = 820
           // self.scroll_NsView.constant = 1800
          }
        self.thirdChildBtn.isSelected = !self.thirdChildBtn.isSelected
      }
    @IBAction func fourthChildAction(_ sender: Any){
        if self.fourthChildBtn.isSelected{
            self.fourthchildBTnImg.image =  UIImage(named: "downArrow")
            self.fourthChildDetailsView.isHidden = true
            self.fourthChildDetailsNsView.constant = 0
           // self.scroll_NsView.constant = 2000
        }else{
            self.fourthchildBTnImg.image =  UIImage(named: "upArrow")
            self.fourthChildDetailsView.isHidden = false
            self.fourthChildDetailsNsView.constant = 820
           // self.scroll_NsView.constant = 1800
          }
        self.fourthChildBtn.isSelected = !self.fourthChildBtn.isSelected
      }
    @IBAction func fatherAction(_ sender: Any){
        if self.fatherBtn.isSelected{
            self.fatherBTnImg.image =  UIImage(named: "downArrow")
            self.fatherDetailsView.isHidden = true
            self.fatherDetailsNsView.constant = 0
           // self.scroll_NsView.constant = 2000
        }else{
            self.fatherBTnImg.image =  UIImage(named: "upArrow")
            self.fatherDetailsView.isHidden = false
            self.fatherDetailsNsView.constant = 820
           // self.scroll_NsView.constant = 1800
          }
        self.fatherBtn.isSelected = !self.fatherBtn.isSelected
      }
    @IBAction func motherAction(_ sender: Any)
    {
        if self.motherChildBtn.isSelected{
            self.motherchildBTnImg.image =  UIImage(named: "downArrow")
            self.motherDetailsView.isHidden = true
            self.motherDetailsNsView.constant =  0
           // self.scroll_NsView.constant = 2000
        }
        else
        {
            self.motherchildBTnImg.image =  UIImage(named: "upArrow")
            self.motherDetailsView.isHidden = false
            self.motherDetailsNsView.constant =  820
           // self.scroll_NsView.constant = 1800
          }
        self.motherChildBtn.isSelected = !self.motherChildBtn.isSelected
      }
    @IBAction func grandFatherACtion(_ sender: Any)
    {
        if self.gFatherChildBtn.isSelected{
            self.gFatherchildBTnImg.image =  UIImage(named: "downArrow")
            self.gFatherDetailsView.isHidden = true
            self.gFatherDetailsNsView.constant = 0
           // self.scroll_NsView.constant = 2000
        }
        else
        {
            self.gFatherchildBTnImg.image =  UIImage(named: "upArrow")
            self.gFatherDetailsView.isHidden = false
            self.gFatherDetailsNsView.constant = 820
           // self.scroll_NsView.constant = 1800
          }
        self.gFatherChildBtn.isSelected = !self.gFatherChildBtn.isSelected
      }
    @IBAction func grandMotherAction(_ sender: Any)
    {
        if self.gMotherChildBtn.isSelected{
            self.gMotherchildBTnImg.image =  UIImage(named: "downArrow")
            self.gMotherDetailsView.isHidden = true
            self.gMotherDetailsNsView.constant = 0
           // self.scroll_NsView.constant = 2000
        }
        else
        {
            self.gMotherchildBTnImg.image =  UIImage(named: "upArrow")
            self.gMotherDetailsView.isHidden = false
            self.gMotherDetailsNsView.constant = 820
           // self.scroll_NsView.constant = 1800
          }
        self.gMotherChildBtn.isSelected = !self.gMotherChildBtn.isSelected
      }
    @IBAction func Nominee_Action(_ sender: Any)
    {
        if self.nomineeBtn.isSelected{
            self.nomineeDropdownImg.image =  UIImage(named: "downArrow")
            self.NomineeDetailView.isHidden = true
            //nomineeBtn.backgroundColor = .white
           // self.scroll_NsView.constant = 2000
        }
        else
        {
            self.nomineeDropdownImg.image =  UIImage(named: "upArrow")
            self.NomineeDetailView.isHidden = false
           // self.scroll_NsView.constant = 1800
          }
        self.nomineeBtn.isSelected = !self.nomineeBtn.isSelected
      }
    @IBAction func backAction(_ sender: Any)
    {
        self.navigationController?.popViewController(animated: true)
    }
    //MARK: - self gender btn
    @IBAction func firstAdultGenderAction(_ sender: Any)
    {
          let dropDown = DropDown()
        dropDown.anchorView = (sender as! AnchorView)
        dropDown.direction = .bottom
          dropDown.dataSource = ["Select Gender","Male","Female"]
          dropDown.selectionAction = { [unowned self] (index: Int, item: String) in
             // self.spouseg.setTitle(item, for: .normal)
              self.selfGender = String(item)
          }
          dropDown.width = (sender as AnyObject).frame.width
          dropDown.show()
      }
    //MARK: - self details Occupation action
    @IBAction func occupationAction(_ sender: Any)
    {
          let dropDown = DropDown()
        dropDown.anchorView = (sender as! AnchorView)
        dropDown.direction = .bottom
          dropDown.dataSource = ["Select Occupation","Doctor","Accounts","Students","Bankers","Lawyer","Architects","Counting Enginners","Teachers","Housewifes","Self Employed","Salaried","consulting engineers","persons Primarily engaged","Person engaged in clerid","Bureaucrats","Shopkeeper","Writer","Fashion Designer","Desk"]
          dropDown.selectionAction = { [unowned self] (index: Int, item: String) in
              self.occupationBtn.setTitle(item, for: .normal)
              self.selfOccupation = String(item)
          }
          dropDown.width = (sender as AnyObject).frame.width
          dropDown.show()
      }
    //MARK: - self details inches action
    @IBAction func fitAction(_ sender: Any)
    {
          let dropDown = DropDown()
        dropDown.anchorView = (sender as! AnchorView)
        dropDown.direction = .bottom
          dropDown.dataSource = ["Select Feet","1","2","3","4","5","6","7 ","8","9","10"]
          dropDown.selectionAction = { [unowned self] (index: Int, item: String) in
              self.fitBtn.setTitle(item, for: .normal)
            self.fit = item
          }
          dropDown.width = (sender as AnyObject).frame.width
          dropDown.show()
      }
    //MARK: - self details fit acti
    @IBAction func inchesAction(_ sender: Any)
    {
          let dropDown = DropDown()
        dropDown.anchorView = (sender as! AnchorView)
        dropDown.direction = .bottom
          dropDown.dataSource = ["Select Inches","1","2","3","4","5","6","7 ","8","9","10"]
          dropDown.selectionAction = { [unowned self] (index: Int, item: String) in
              self.inchesBtn.setTitle(item, for: .normal)
            self.inches = item
          }
          dropDown.width = (sender as AnyObject).frame.width
          dropDown.show()
        }
    @IBAction func NomineeGenderAction(_ sender: Any)
    {
          let dropDown = DropDown()
        dropDown.anchorView = (sender as! AnchorView)
        dropDown.direction = .bottom
          dropDown.dataSource = ["Select Gender","Male","Female"]
          dropDown.selectionAction = { [unowned self] (index: Int, item: String) in
              self.genderBtn.setTitle(item, for: .normal)
            self.inches = item
          }
          dropDown.width = (sender as AnyObject).frame.width
          dropDown.show()
        }
    //MARK: - self details fit acti
    @IBAction func selfGenderAction(_ sender: Any)
    {
          let dropDown = DropDown()
        dropDown.anchorView = (sender as! AnchorView)
        dropDown.direction = .bottom
          dropDown.dataSource = ["Select Gender","Male","Female"]
          dropDown.selectionAction = { [unowned self] (index: Int, item: String) in
              self.genderBtn.setTitle(item, for: .normal)
            self.inches = item
          }
          dropDown.width = (sender as AnyObject).frame.width
          dropDown.show()
        }
    
    
    //MARK: - self relation type button action
    @IBAction func relationAction(_ sender: Any) {
          let dropDown = DropDown()
        dropDown.anchorView = (sender as! AnchorView)
        dropDown.direction = .bottom
          dropDown.dataSource = ["Spouse","Son","Daughter in law","Son in law","Mother","Father","Father in law","Brother","Sister","Daughter","Grand Father","Grand Mother","Grand Son","Grand Daughter","Legal Heir"]
          dropDown.selectionAction = { [unowned self] (index: Int, item: String) in
              self.relationBtn.setTitle(item, for: .normal)
              self.selfRelation = String(item)
          }
          dropDown.width = (sender as AnyObject).frame.width
          dropDown.show()
          }
    //MARK: - spouse gender btn
    @IBAction func spouseGenderAction(_ sender: Any)
    {
          let dropDown = DropDown()
        dropDown.anchorView = (sender as! AnchorView)
        dropDown.direction = .bottom
          dropDown.dataSource = ["Select Gender","Male","Female"]
          dropDown.selectionAction = { [unowned self] (index: Int, item: String) in
             self.spousegenderBtn.setTitle(item, for: .normal)
              self.spouseGender = String(item)
          }
          dropDown.width = (sender as AnyObject).frame.width
          dropDown.show()
      }
    //MARK: - spouses details Occupation action
    @IBAction func spouseOccupationAction(_ sender: Any)
    {
        let dropDown = DropDown()
      dropDown.anchorView = (sender as! AnchorView)
      dropDown.direction = .bottom
        dropDown.dataSource = ["Select Occupation","Doctor","Accounts","Students","Bankers","Lawyer","Architects","Counting Enginners","Teachers","Housewifes","Self Employed","Salaried","consulting engineers","persons Primarily engaged","Person engaged in clerid","Bureaucrats","Shopkeeper","Writer","Fashion Designer","Desk"]
        dropDown.selectionAction = { [unowned self] (index: Int, item: String) in
            self.spousesOccupationBtn.setTitle(item, for: .normal)
            self.spouseOccupation = String(item)
        }
        dropDown.width = (sender as AnyObject).frame.width
        dropDown.show()
      }
    //MARK: - spouses details inches action
    @IBAction func spouseFitAction(_ sender: Any)
    {
          let dropDown = DropDown()
        dropDown.anchorView = (sender as! AnchorView)
        dropDown.direction = .bottom
          dropDown.dataSource = ["Select inches","1","2","3","4","5","6","7 ","8","9","10"]
          dropDown.selectionAction = { [unowned self] (index: Int, item: String) in
              self.spousesAdultFitBtn.setTitle(item, for: .normal)
            self.fit = item
          }
          dropDown.width = (sender as AnyObject).frame.width
          dropDown.show()
      }
    //MARK: - spouses details fit acti
    @IBAction func spouseInchesAction(_ sender: Any)
    {
          let dropDown = DropDown()
        dropDown.anchorView = (sender as! AnchorView)
        dropDown.direction = .bottom
          dropDown.dataSource = ["Select Feet","1","2","3","4","5","6","7 ","8","9","10"]
          dropDown.selectionAction = { [unowned self] (index: Int, item: String) in
              self.spousesAdultInchesBtn.setTitle(item, for: .normal)
            self.inches = item
          }
          dropDown.width = (sender as AnyObject).frame.width
          dropDown.show()
        }
    //MARK: - policy time  type button action
    @IBAction func spouseRelationAction(_ sender: Any)
    {
          let dropDown = DropDown()
        dropDown.anchorView = (sender as! AnchorView)
        dropDown.direction = .bottom
          dropDown.dataSource = ["Spouse","Son","Daughter in law","Son in law","Mother","Father","Father in law","Brother","Sister","Daughter","Grand Father","Grand Mother","Grand Son","Grand Daughter","Legal Heir"]
          dropDown.selectionAction = { [unowned self] (index: Int, item: String) in
             // self.relationBtn.setTitle(item, for: .normal)
              self.spouseRelation = String(item)
          }
          dropDown.width = (sender as AnyObject).frame.width
          dropDown.show()
          }
    //MARK: - First Child btn
    @IBAction func firstchildGender(_ sender: Any)
    {
          let dropDown = DropDown()
        dropDown.anchorView = (sender as! AnchorView)
        dropDown.direction = .bottom
          dropDown.dataSource = ["Select Gender","Male","Female"]
          dropDown.selectionAction = { [unowned self] (index: Int, item: String) in
             // self.spouseg.setTitle(item, for: .normal)
          }
          dropDown.width = (sender as AnyObject).frame.width
          dropDown.show()
      }
    //MARK: - First Child Occupation action
    @IBAction func firstChildOccupationAction(_ sender: Any)
    {
          let dropDown = DropDown()
        dropDown.anchorView = (sender as! AnchorView)
        dropDown.direction = .bottom
          dropDown.dataSource = ["Select Occupation","Doctor","Accounts","Students","Bankers","Lawyer","Architects","Counting Enginners","Teachers","Housewifes","Self Employed","Salaried","consulting engineers","persons Primarily engaged","Person engaged in clerid","Bureaucrats","Shopkeeper","Writer","Fashion Designer","Desk"]
          dropDown.selectionAction = { [unowned self] (index: Int, item: String) in
              self.firstChildOccupationBtn.setTitle(item, for: .normal)
          }
          dropDown.width = (sender as AnyObject).frame.width
          dropDown.show()
      }
    //MARK: - First Child inches action
    @IBAction func firstChildInchesAction(_ sender: Any)
    {
          let dropDown = DropDown()
        dropDown.anchorView = (sender as! AnchorView)
        dropDown.direction = .bottom
          dropDown.dataSource = ["Select inches","1","2","3","4","5","6","7 ","8","9","10"]
          dropDown.selectionAction = { [unowned self] (index: Int, item: String) in
              self.firstChildAdultInchesBtn.setTitle(item, for: .normal)
            self.fit = item
          }
          dropDown.width = (sender as AnyObject).frame.width
          dropDown.show()
      }
    //MARK: - First Child fit action
    @IBAction func firstChildFitAction(_ sender: Any)
    {
          let dropDown = DropDown()
        dropDown.anchorView = (sender as! AnchorView)
        dropDown.direction = .bottom
          dropDown.dataSource = ["Select Feet","1","2","3","4","5","6","7 ","8","9","10"]
          dropDown.selectionAction = { [unowned self] (index: Int, item: String) in
              self.firstChildAdultFitBtn.setTitle(item, for: .normal)
            self.inches = item
          }
          dropDown.width = (sender as AnyObject).frame.width
          dropDown.show()
        }
    //MARK: - first child relation Action
    @IBAction func firstChildRelationAction(_ sender: Any)
    {
          let dropDown = DropDown()
        dropDown.anchorView = (sender as! AnchorView)
        dropDown.direction = .bottom
        dropDown.dataSource = ["Select Relation","Son","Daughter"]
          dropDown.selectionAction = { [] (index: Int, item: String) in
             // self.relationBtn.setTitle(item, for: .normal)
          }
          dropDown.width = (sender as AnyObject).frame.width
          dropDown.show()
          }
    //MARK: - second  Child btn
    @IBAction func secondchildGender(_ sender: Any)
    {
          let dropDown = DropDown()
        dropDown.anchorView = (sender as! AnchorView)
        dropDown.direction = .bottom
          dropDown.dataSource = ["Select Gender","Male","Female"]
          dropDown.selectionAction = { [] (index: Int, item: String) in
             // self.spouseg.setTitle(item, for: .normal)
          }
          dropDown.width = (sender as AnyObject).frame.width
          dropDown.show()
      }
    //MARK: - second Child Occupation action
    @IBAction func secondChildOccupationAction(_ sender: Any)
    {
          let dropDown = DropDown()
        dropDown.anchorView = (sender as! AnchorView)
        dropDown.direction = .bottom
          dropDown.dataSource = ["Select Occupation","Doctor","Accounts","Students","Bankers","Lawyer","Architects","Counting Enginners","Teachers","Housewifes","Self Employed","Salaried","consulting engineers","persons Primarily engaged","Person engaged in clerid","Bureaucrats","Shopkeeper","Writer","Fashion Designer","Desk"]
          dropDown.selectionAction = { [unowned self] (index: Int, item: String) in
              self.secondChildsOccupationBtn.setTitle(item, for: .normal)
          }
          dropDown.width = (sender as AnyObject).frame.width
          dropDown.show()
      }
    //MARK: - second Child inches action
    @IBAction func secondChildInchesAction(_ sender: Any)
    {
          let dropDown = DropDown()
        dropDown.anchorView = (sender as! AnchorView)
        dropDown.direction = .bottom
          dropDown.dataSource = ["Select inches","1","2","3","4","5","6","7 ","8","9","10"]
          dropDown.selectionAction = { [unowned self] (index: Int, item: String) in
              self.secondChildsAdultInchesBtn.setTitle(item, for: .normal)
            self.fit = item
          }
          dropDown.width = (sender as AnyObject).frame.width
          dropDown.show()
      }
    //MARK: - second Child fit action
    @IBAction func secondChildFitAction(_ sender: Any)
    {
          let dropDown = DropDown()
        dropDown.anchorView = (sender as! AnchorView)
        dropDown.direction = .bottom
          dropDown.dataSource = ["Select Feet","1","2","3","4","5","6","7 ","8","9","10"]
          dropDown.selectionAction = { [unowned self] (index: Int, item: String) in
              self.secondChildsAdultFitBtn.setTitle(item, for: .normal)
            self.inches = item
          }
          dropDown.width = (sender as AnyObject).frame.width
          dropDown.show()
        }
    //MARK: - second child relation Action
    @IBAction func secondChildRelationAction(_ sender: Any)
    {
          let dropDown = DropDown()
        dropDown.anchorView = (sender as! AnchorView)
        dropDown.direction = .bottom
        dropDown.dataSource = ["Select Relation","Son","Daughter"]
          dropDown.selectionAction = { [unowned self] (index: Int, item: String) in
             // self.relationBtn.setTitle(item, for: .normal)
          }
          dropDown.width = (sender as AnyObject).frame.width
          dropDown.show()
          }
    
    //MARK: - second  Child btn
    @IBAction func thirdchildGender(_ sender: Any)
    {
          let dropDown = DropDown()
        dropDown.anchorView = (sender as! AnchorView)
        dropDown.direction = .bottom
          dropDown.dataSource = ["Select Gender","Male","Female"]
          dropDown.selectionAction = { [unowned self] (index: Int, item: String) in
             // self.spouseg.setTitle(item, for: .normal)
          }
          dropDown.width = (sender as AnyObject).frame.width
          dropDown.show()
      }
    //MARK: - second Child Occupation action
    @IBAction func thirdChildOccupationAction(_ sender: Any)
    {
          let dropDown = DropDown()
        dropDown.anchorView = (sender as! AnchorView)
        dropDown.direction = .bottom
          dropDown.dataSource = ["Select Occupation","Doctor","Accounts","Students","Bankers","Lawyer","Architects","Counting Enginners","Teachers","Housewifes","Self Employed","Salaried","consulting engineers","persons Primarily engaged","Person engaged in clerid","Bureaucrats","Shopkeeper","Writer","Fashion Designer","Desk"]
          dropDown.selectionAction = { [unowned self] (index: Int, item: String) in
              self.thirdChildOccupationBtn.setTitle(item, for: .normal)
          }
          dropDown.width = (sender as AnyObject).frame.width
          dropDown.show()
      }
    //MARK: - third Child inches action
    @IBAction func thirdChildInchesAction(_ sender: Any)
    {
          let dropDown = DropDown()
        dropDown.anchorView = (sender as! AnchorView)
        dropDown.direction = .bottom
          dropDown.dataSource = ["Select inches","1","2","3","4","5","6","7 ","8","9","10"]
          dropDown.selectionAction = { [unowned self] (index: Int, item: String) in
              self.thirdChildAdultInchesBtn.setTitle(item, for: .normal)
            self.fit = item
          }
          dropDown.width = (sender as AnyObject).frame.width
          dropDown.show()
      }
    //MARK: - third Child fit action
    @IBAction func thirdChildFitAction(_ sender: Any)
    {
          let dropDown = DropDown()
        dropDown.anchorView = (sender as! AnchorView)
        dropDown.direction = .bottom
          dropDown.dataSource = ["Select Feet","1","2","3","4","5","6","7 ","8","9","10"]
          dropDown.selectionAction = { [unowned self] (index: Int, item: String) in
              self.thirdChildAdultFitBtn.setTitle(item, for: .normal)
            self.inches = item
          }
          dropDown.width = (sender as AnyObject).frame.width
          dropDown.show()
        }
    //MARK: - third child relation Action
    @IBAction func thirdChildRelationAction(_ sender: Any)
    {
          let dropDown = DropDown()
        dropDown.anchorView = (sender as! AnchorView)
        dropDown.direction = .bottom
        dropDown.dataSource = ["Select Relation","Son","Daughter"]
          dropDown.selectionAction = { [unowned self] (index: Int, item: String) in
             // self.relationBtn.setTitle(item, for: .normal)
          }
          dropDown.width = (sender as AnyObject).frame.width
          dropDown.show()
          }
    //MARK: - fourth child details action Gender
    @IBAction func fourthGenderAction(_ sender: Any)
    {
          let dropDown = DropDown()
        dropDown.anchorView = (sender as! AnchorView)
          dropDown.dataSource = ["Select Gender","Male","Female"]
          dropDown.selectionAction = { [unowned self] (index: Int, item: String) in
              self.fourthChildGenderbtn.setTitle(item, for: .normal)
          }
          dropDown.width = (sender as AnyObject).frame.width
          dropDown.show()
      }
    //MARK: - second child details Occupation action
    @IBAction func fourthChildOccupationAction(_ sender: Any) {
          let dropDown = DropDown()
        dropDown.anchorView = (sender as! AnchorView)
        dropDown.direction = .bottom
          dropDown.dataSource = ["Select Occupation","Doctor","Accounts","Students","Bankers","Lawyer","Architects","Counting Enginners","Teachers","Housewifes","Self Employed","Salaried","consulting engineers","persons Primarily engaged","Person engaged in clerid","Bureaucrats","Shopkeeper","Writer","Fashion Designer","Desk"]
          dropDown.selectionAction = { [unowned self] (index: Int, item: String) in
              self.fourthChildOccupationBtn.setTitle(item, for: .normal)
          }
          dropDown.width = (sender as AnyObject).frame.width
          dropDown.show()
      }
    //MARK: - third child details inches action
    @IBAction func fourthFitAction(_ sender: Any) {
          let dropDown = DropDown()
        dropDown.anchorView = (sender as! AnchorView)
        dropDown.direction = .bottom
          dropDown.dataSource = ["Select inches","1","2","3","4","5","6","7 ","8","9","10"]
          dropDown.selectionAction = { [unowned self] (index: Int, item: String) in
              self.fourthChildAdultFitBtn.setTitle(item, for: .normal)
            self.fit = item
          }
          dropDown.width = (sender as AnyObject).frame.width
          dropDown.show()
      }
    //MARK:- third child details fit action
    @IBAction func fourthInchesAction(_ sender: Any) {
          let dropDown = DropDown()
        dropDown.anchorView = (sender as! AnchorView)
        dropDown.direction = .bottom
        dropDown.dataSource = ["Select Fit","1","2","3","4","5","6","7 ","8","9","10"]
          dropDown.selectionAction = { [unowned self] (index: Int, item: String) in
              self.fourthChildAdultInchesBtn.setTitle(item, for: .normal)
            self.inches = item
          }
          dropDown.width = (sender as AnyObject).frame.width
          dropDown.show()
        }
    //MARK: - fourth child relation  action
    @IBAction func fourthChildRelation(_ sender: Any) {
          let dropDown = DropDown()
        dropDown.anchorView = (sender as! AnchorView)
        dropDown.direction = .bottom
        dropDown.dataSource = ["Select Relation","Son","Daughter"]
          dropDown.selectionAction = { [unowned self] (index: Int, item: String) in
              //self.fourthChildRelationBtn.setTitle(item, for: .normal)
          }
          dropDown.width = (sender as AnyObject).frame.width
          dropDown.show()
          }
    //MARK: - second Child Occupation action
    @IBAction func fatherOccupation(_ sender: Any) {
          let dropDown = DropDown()
        dropDown.anchorView = (sender as! AnchorView)
        dropDown.direction = .bottom
          dropDown.dataSource = ["Select Occupation","Doctor","Accounts","Students","Bankers","Lawyer","Architects","Counting Enginners","Teachers","Housewifes","Self Employed","Salaried","consulting engineers","persons Primarily engaged","Person engaged in clerid","Bureaucrats","Shopkeeper","Writer","Fashion Designer","Desk"]
          dropDown.selectionAction = { [unowned self] (index: Int, item: String) in
              self.fatherOccupationBtn.setTitle(item, for: .normal)
              self.fatherOccupation = String(item)
          }
          dropDown.width = (sender as AnyObject).frame.width
          dropDown.show()
      }
    //MARK: - second Child inches action
    @IBAction func fatherincheAction(_ sender: Any) {
          let dropDown = DropDown()
        dropDown.anchorView = (sender as! AnchorView)
        dropDown.direction = .bottom
          dropDown.dataSource = ["Select inches","1","2","3","4","5","6","7 ","8","9","10"]
          dropDown.selectionAction = { [unowned self] (index: Int, item: String) in
              self.fatherAdultInchesBtn.setTitle(item, for: .normal)
            self.fit = item
          }
          dropDown.width = (sender as AnyObject).frame.width
          dropDown.show()
      }
    //MARK: - second Child fit action
    @IBAction func fatherFitAction(_ sender: Any) {
          let dropDown = DropDown()
        dropDown.anchorView = (sender as! AnchorView)
        dropDown.direction = .bottom
          dropDown.dataSource = ["Select Feet","1","2","3","4","5","6","7 ","8","9","10"]
          dropDown.selectionAction = { [unowned self] (index: Int, item: String) in
              self.fatherAdultFitBtn.setTitle(item, for: .normal)
            self.inches = item
          }
          dropDown.width = (sender as AnyObject).frame.width
          dropDown.show()
        }
    //MARK: - second Child Occupation action
    @IBAction func motherOccupationAction(_ sender: Any) {
          let dropDown = DropDown()
        dropDown.anchorView = (sender as! AnchorView)
        dropDown.direction = .bottom
          dropDown.dataSource = ["Select Occupation","Doctor","Accounts","Students","Bankers","Lawyer","Architects","Counting Enginners","Teachers","Housewifes","Self Employed","Salaried","consulting engineers","persons Primarily engaged","Person engaged in clerid","Bureaucrats","Shopkeeper","Writer","Fashion Designer","Desk"]
          dropDown.selectionAction = { [unowned self] (index: Int, item: String) in
              self.secondChildsOccupationBtn.setTitle(item, for: .normal)
              self.motherOccupation = String(item)
          }
          dropDown.width = (sender as AnyObject).frame.width
          dropDown.show()
      }
    //MARK: - second Child inches action
    @IBAction func motherInchesAction(_ sender: Any) {
          let dropDown = DropDown()
        dropDown.anchorView = (sender as! AnchorView)
        dropDown.direction = .bottom
          dropDown.dataSource = ["Select inches","1","2","3","4","5","6","7 ","8","9","10"]
          dropDown.selectionAction = { [unowned self] (index: Int, item: String) in
              self.motherAdultInchesBtn.setTitle(item, for: .normal)
            self.fit = item
          }
          dropDown.width = (sender as AnyObject).frame.width
          dropDown.show()
      }
    //MARK: - second Child fit action
    @IBAction func motherFitAction(_ sender: Any) {
          let dropDown = DropDown()
        dropDown.anchorView = (sender as! AnchorView)
        dropDown.direction = .bottom
          dropDown.dataSource = ["Select Feet","1","2","3","4","5","6","7 ","8","9","10"]
          dropDown.selectionAction = { [unowned self] (index: Int, item: String) in
              self.motherAdultFitBtn.setTitle(item, for: .normal)
            self.inches = item
          }
          dropDown.width = (sender as AnyObject).frame.width
          dropDown.show()
    }
    //MARK: - second Child Occupation action
    @IBAction func grandFatherOccupationAction(_ sender: Any) {
          let dropDown = DropDown()
        dropDown.anchorView = (sender as! AnchorView)
        dropDown.direction = .bottom
          dropDown.dataSource = ["Select Occupation","Doctor","Accounts","Students","Bankers","Lawyer","Architects","Counting Enginners","Teachers","Housewifes","Self Employed","Salaried","consulting engineers","persons Primarily engaged","Person engaged in clerid","Bureaucrats","Shopkeeper","Writer","Fashion Designer","Desk"]
          dropDown.selectionAction = { [unowned self] (index: Int, item: String) in
              self.gFatherOccupationBtn.setTitle(item, for: .normal)
              self.gFatherOccupation = String(item)
          }
          dropDown.width = (sender as AnyObject).frame.width
          dropDown.show()
      }
    //MARK: - second Child inches action
    @IBAction func grandFatherInchesAction(_ sender: Any) {
          let dropDown = DropDown()
        dropDown.anchorView = (sender as! AnchorView)
        dropDown.direction = .bottom
          dropDown.dataSource = ["Select inches","1","2","3","4","5","6","7 ","8","9","10"]
          dropDown.selectionAction = { [unowned self] (index: Int, item: String) in
              self.gFatherAdultInchesBtn.setTitle(item, for: .normal)
            self.fit = item
          }
          dropDown.width = (sender as AnyObject).frame.width
          dropDown.show()
      }
    //MARK: - second Child fit action
    @IBAction func grandFatherFitAction(_ sender: Any) {
          let dropDown = DropDown()
        dropDown.anchorView = (sender as! AnchorView)
        dropDown.direction = .bottom
          dropDown.dataSource = ["Select Feet","1","2","3","4","5","6","7 ","8","9","10"]
          dropDown.selectionAction = { [unowned self] (index: Int, item: String) in
              self.gFatherAdultInchesBtn.setTitle(item, for: .normal)
            self.inches = item
          }
          dropDown.width = (sender as AnyObject).frame.width
          dropDown.show()
        }
    //MARK: - second Child Occupation action
    @IBAction func grandMotherOccupationAction(_ sender: Any) {
          let dropDown = DropDown()
        dropDown.anchorView = (sender as! AnchorView)
        dropDown.direction = .bottom
          dropDown.dataSource = ["Select Occupation","Doctor","Accounts","Students","Bankers","Lawyer","Architects","Counting Enginners","Teachers","Housewifes","Self Employed","Salaried","consulting engineers","persons Primarily engaged","Person engaged in clerid","Bureaucrats","Shopkeeper","Writer","Fashion Designer","Desk"]
          dropDown.selectionAction = { [unowned self] (index: Int, item: String) in
              self.gMotherOccupationBtn.setTitle(item, for: .normal)
              self.gMotherOccupation = String(item)
          }
          dropDown.width = (sender as AnyObject).frame.width
          dropDown.show()
      }
    //MARK: - second Child inches action
    @IBAction func grandMotherInchesAction(_ sender: Any) {
          let dropDown = DropDown()
        dropDown.anchorView = (sender as! AnchorView)
        dropDown.direction = .bottom
          dropDown.dataSource = ["Select inches","1","2","3","4","5","6","7 ","8","9","10"]
          dropDown.selectionAction = { [unowned self] (index: Int, item: String) in
              self.gMotherAdultInchesBtn.setTitle(item, for: .normal)
            self.fit = item
          }
          dropDown.width = (sender as AnyObject).frame.width
          dropDown.show()
      }
    //MARK: - second Child fit action
    @IBAction func grandMotherFitAction(_ sender: Any) {
          let dropDown = DropDown()
        dropDown.anchorView = (sender as! AnchorView)
        dropDown.direction = .bottom
          dropDown.dataSource = ["Select Feet","1","2","3","4","5","6","7 ","8","9","10"]
          dropDown.selectionAction = { [unowned self] (index: Int, item: String) in
              self.gMotherAdultFitBtn.setTitle(item, for: .normal)
            self.inches = item
          }
          dropDown.width = (sender as AnyObject).frame.width
          dropDown.show()
        }
    @IBAction func continueAction(_ sender: Any) {
//                let nextVC =  UIStoryboard.init(name: "Health", bundle: nil).instantiateViewController(withIdentifier: "MedicalInforVC") as! MedicalInforVC
//                self.navigationController?.pushViewController(nextVC, animated: true)
        
     //   if dob_Txt.text == ""{
       //     alert(message: "Please enter DOB",title: "Message")
            //   }else if genderBtn.isSelected == false{
            //  alert(message: "Please enter Gender",title: "Message")
            // }       else if genderBtn.isSelected == true
            //        {
            //            let nextVc = UIStoryboard.init(name: "Health", bundle: nil).instantiateViewController(withIdentifier: "MedicalInforVC") as! MedicalInforVC
            //            self.navigationController?.pushViewController(nextVc, animated: true)
            
            
            //   }else if occupationBtn.isSelected == false{
            //  alert(message: "please select Occupation",title: "Message")
            //  }       else if occupationBtn.isSelected == true
            //        {
            //
            //            let nextVc = UIStoryboard.init(name: "Health", bundle: nil).instantiateViewController(withIdentifier: "MedicalInforVC") as! MedicalInforVC
            //            self.navigationController?.pushViewController(nextVc, animated: true)
            
            
            //        }else if Address1View.text == ""{
            //            alert(message: "please select Address",title: "Message")
            //        } else if Address2View.text == ""{
            //            alert(message: "please select Address",title: "Message")
//                    }        else if pinCode_Txt.text == ""{
//                       alert(message: "please select Pincode",title: "Message")
//
////
//        func textFieldDidChange(_ textField: UITextField) {
//            if dob_Txt.text!.isEmpty
//           //     || Address1View.text!.isEmpty || Address2View.text!.isEmpty || pinCode_Txt.text!.isEmpty || Address2View.text!.isEmpty {
//                continueBtn.isEnabled = false
//            } else {
//                continueBtn.isEnabled = true
//                let nextVc = UIStoryboard.init(name: "Health", bundle: nil).instantiateViewController(withIdentifier: "MedicalInforVC") as! MedicalInforVC
//                self.navigationController?.pushViewController(nextVc, animated: true)
//            }
//
//        }
                
            
    }
}
//MARK: -  extension for the textfield delegate
extension PersonalInformationVC:UITextFieldDelegate{
    func textField(_ textField: UITextField, shouldChangeCharactersIn range: NSRange, replacementString string: String) -> Bool {
        let allowcharacters = CharacterSet.alphanumerics
        let charatcerset = CharacterSet(charactersIn: string)
        return allowcharacters.isSuperset(of: charatcerset)
        
        let currentCharacterCount = self.pinCode_Txt?.text?.count ?? 0
        if range.length + range.location > currentCharacterCount {
            return false
        }
        let newLength = currentCharacterCount + string.count - range.length
        print(newLength)
        return newLength <= 6
        
        
    }
    func textFieldDidEndEditing(_ textField: UITextField) {
//        if textField == dob_Txt {
//            self.dob_Txt.text = "\(datePicker.date.dateInYyyyMmDdSs())"
//            let selectDate = datePicker.date.dateInYyyyMmDdSs()
//            let formetter = DateFormatter()
//            formetter.locale = Locale(identifier: "en_US_POSIX")
//            formatter.dateFormat = "dd/MM/YYYY"
//            //let date = formatter.date(from: selectDate)
            //let datee =   date
            //            self.calculated = datee?.age ?? 0
            //           self.newAge = dob_Txt.text ?? ""
      //  } else
            if textField == spousesDobTxt {
            self.spousesDobTxt.text = "\(datePicker.date.dateInYyyyMmDdSs())"
            let selectDate = datePicker.date.dateInYyyyMmDdSs()
            let formetter = DateFormatter()
            formetter.locale = Locale(identifier: "en_US_POSIX")
            formatter.dateFormat = "dd/MM/YYYY"
        } else if textField == firstChildDobTxt {
            self.firstChildDobTxt.text = "\(datePicker.date.dateInYyyyMmDdSs())"
            let selectDate = datePicker.date.dateInYyyyMmDdSs()
            let formetter = DateFormatter()
            formetter.locale = Locale(identifier: "en_US_POSIX")
            formatter.dateFormat = "dd/MM/YYYY"
        } else if textField == secondChildsDobTxt {
            self.secondChildsDobTxt.text = "\(datePicker.date.dateInYyyyMmDdSs())"
            let selectDate = datePicker.date.dateInYyyyMmDdSs()
            let formetter = DateFormatter()
            formetter.locale = Locale(identifier: "en_US_POSIX")
            formatter.dateFormat = "dd/MM/YYYY"
        } else if textField == thirdChildDobTxt {
            self.thirdChildDobTxt.text = "\(datePicker.date.dateInYyyyMmDdSs())"
            let selectDate = datePicker.date.dateInYyyyMmDdSs()
            let formetter = DateFormatter()
            formetter.locale = Locale(identifier: "en_US_POSIX")
            formatter.dateFormat = "dd/MM/YYYY"
        }else if textField == fourthChildDobTxt {
            self.fourthChildDobTxt.text = "\(datePicker.date.dateInYyyyMmDdSs())"
            let selectDate = datePicker.date.dateInYyyyMmDdSs()
            let formetter = DateFormatter()
            formetter.locale = Locale(identifier: "en_US_POSIX")
            formatter.dateFormat = "dd/MM/YYYY"
        }else if textField == fatherDobTxt {
            self.fatherDobTxt.text = "\(datePicker.date.dateInYyyyMmDdSs())"
            let selectDate = datePicker.date.dateInYyyyMmDdSs()
            let formetter = DateFormatter()
            formetter.locale = Locale(identifier: "en_US_POSIX")
            formatter.dateFormat = "dd/MM/YYYY"
        }else if textField == motherDobTxt {
            self.motherDobTxt.text = "\(datePicker.date.dateInYyyyMmDdSs())"
            let selectDate = datePicker.date.dateInYyyyMmDdSs()
            let formetter = DateFormatter()
            formetter.locale = Locale(identifier: "en_US_POSIX")
            formatter.dateFormat = "dd/MM/YYYY"
        }else if textField == gMotherDobTxt {
            self.gMotherDobTxt.text = "\(datePicker.date.dateInYyyyMmDdSs())"
            let selectDate = datePicker.date.dateInYyyyMmDdSs()
            let formetter = DateFormatter()
            formetter.locale = Locale(identifier: "en_US_POSIX")
            formatter.dateFormat = "dd/MM/YYYY"
        }else if textField == gFatherDobTxt {
            self.gFatherDobTxt.text = "\(datePicker.date.dateInYyyyMmDdSs())"
            let selectDate = datePicker.date.dateInYyyyMmDdSs()
            let formetter = DateFormatter()
            formetter.locale = Locale(identifier: "en_US_POSIX")
            formatter.dateFormat = "dd/MM/YYYY"
        }else if textField == pinCode_Txt{
            self.textCount = self.pinCode_Txt.text ?? ""

        }else if textField == weight_Txt{
            self.firstAdultWeight  = self.weight_Txt.text ?? ""
            self.firstAdult()
        }
    }}
        
        // private func PersonalInformationVC() {
        //     let email = UserDefaults.standard.string(forKey: "email")
        //        if !CommonMethods.isInternetAvailable() {
        //            AlertManager.shared.showErrorAlert(title: "Alert", message: "please check internet Connection", controller: self)
        //            return
        //        }else if (TxtNameFST.text == "") {
        //            AlertManager.shared.showErrorAlert(title: "Alert", message: "Please Enter Occupation", controller: self)
        //            return
        //        }else if (TxtEmailID.text == "") {
        //            AlertManager.shared.showErrorAlert(title: "Alert", message: "Please Enter Valid OTP", controller: self)
        //            return
        //        }else if (TxtGender.text == "") {
        //            AlertManager.shared.showErrorAlert(title: "Alert", message: "Please Enter Gender", controller: self)
        //            return
        //        }else if (TxtPincode.text == "") {
        //            AlertManager.shared.showErrorAlert(title: "Alert", message: "Please Enter Valid OTP", controller: self)
        //            return
        //        }else if (TxtRelation.text == "") {
        //            AlertManager.shared.showErrorAlert(title: "Alert", message: "Please Enter Valid OTP", controller: self)
        //            return
        //        }else if (dob_Txt.text == "") {
        //            AlertManager.shared.showErrorAlert(title: "Alert", message: "Please Enter Valid OTP", controller: self)
        //            return
        //        }
        //                       if continueBtn == self.continueBtn{
        //                  }
        //                 }
        //
        //
        
        
        
//        if TxtNameFST.text == ""{
//            alert(message: "Please enter name",title: "Message")
//        }else if TxtEmailID.text == ""{
//            alert(message: "Please enter EmailID",title: "Message")
//            //        }else if age_Btn.title(for: .normal) == "Select Gender" {
//            //            alert(message: "Please select Gender",title: "Message")
//        }else if TxtGender.text == ""{
//            alert(message: "please select Gender",title: "Message")
//        }else if TxtPincode.isSelected == false{
//            alert(message: "please select PinCode",title: "Message")
//        } else if TxtRelation.text == ""{
//            alert(message: "please select Relation",title: "Message")
//        }
//        else if TxtBithdate.text == ""{
//            alert(message: "please select Last Name",title: "Message")
//        }
//        //        else if TxtBithdate.text == ""{
//        //            alert(message: "please select Birthdate",title: "Message")
//        //        }       else if (TxtBithdate.text != nil) == true{
//        //
//        func textFieldDidChange(_ textField: UITextField) {
//            if TxtNameFST.text!.isEmpty || TxtPincode.text!.isEmpty || TxtRelation.text!.isEmpty || TxtEmailID.text!.isEmpty||TxtGender.text!.isEmpty || TxtEmailID.text!.isEmpty {
//                continueBtn.isEnabled = false
//            } else {
//                continueBtn.isEnabled = false
//                let nextVc = UIStoryboard.init(name: "Health", bundle: nil).instantiateViewController(withIdentifier: "MedicalInforVC") as! MedicalInforVC
//                self.navigationController?.pushViewController(nextVc, animated: true)
//
//
//            }
//
//
//


        
    
        
  
//MARK: -  textview delegate for emoji blocking
extension PersonalInformationVC: UITextViewDelegate {
    func textView(_ textView: UITextView, shouldChangeTextIn range: NSRange, replacementText text: String) -> Bool {
        if containsValidCharacters(text) {
           // errorLabel.isHidden = true
            return true
        }
       // errorLabel.isHidden = false
        return false
    }
    private func containsValidCharacters(_ text: String) -> Bool {
        let validChars = "abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789.,@:?!()$\\/# \n"
        let invalidSet = CharacterSet(charactersIn: validChars).inverted
        return text.rangeOfCharacter(from: invalidSet) == nil
    }
    }
//MARK: -  func



//extension PersonalInformationVC {
   // extension OtpVC{
//    private func userOtp() {
//        //     let email = UserDefaults.standard.string(forKey: "email")
//        if !CommonMethods.isInternetAvailable() {
//            AlertManager.shared.showErrorAlert(title: "Alert", message: "please check internet Connection", controller: self)
//            return
//        }else if (TxtNameFST.text == "") {
//            AlertManager.shared.showErrorAlert(title: "Alert", message: "Please Enter Email", controller: self)
//            return
//        }else if (TxtEmailID.text == "") {
//            AlertManager.shared.showErrorAlert(title: "Alert", message: "Please Enter Valid OTP", controller: self)
//            return
//        }else if (TxtGender.text == "") {
//            AlertManager.shared.showErrorAlert(title: "Alert", message: "Please Enter Valid OTP", controller: self)
//            return
//        }else if (TxtPincode.text == "") {
//            AlertManager.shared.showErrorAlert(title: "Alert", message: "Please Enter Valid OTP", controller: self)
//            return
//        }else if (TxtRelation.text == "") {
//            AlertManager.shared.showErrorAlert(title: "Alert", message: "Please Enter Valid OTP", controller: self)
//            return
//        }else if (dob_Txt.text == "") {
//            AlertManager.shared.showErrorAlert(title: "Alert", message: "Please Enter Valid OTP", controller: self)
//            return
//        }
//        if continueBtn == self.continueBtn{
//        }
//    }
//}

extension UITextField{
   @IBInspectable var placeHolderColorr: UIColor? {
        get {
            return self.placeHolderColorr
        }
        set {
            self.attributedPlaceholder = NSAttributedString(string:self.placeholder != nil ? self.placeholder! : "", attributes:[NSAttributedString.Key.foregroundColor: newValue!])
        }
    }
}
