//
//  ChoosePlanVC.swift
//  APlusCalculator
//
//  Created by ravit chaudhary on 02/04/23.
//

import UIKit
import CoreLocation
class ChoosePlanVC: UIViewController,CLLocationManagerDelegate {

    @IBOutlet var RightSumTxtFld: UITextField!
    @IBOutlet var ViewselectRightSum: UIView!
    @IBOutlet var SelfCollectionView: UICollectionView!
    @IBOutlet var SelectPlanCollectioVw: UICollectionView!
    var DropDownpickerview = UIPickerView()
    var DropdownArrary = [""]
    
    

    override func viewDidLoad() {
        super.viewDidLoad()
        ViewselectRightSum.layer.borderColor = #colorLiteral(red: 0.6000000238, green: 0.6000000238, blue: 0.6000000238, alpha: 1)
        ViewselectRightSum.layer.borderWidth = 1.5
        ViewselectRightSum.layer.cornerRadius = 14
        self.OpenPickerView()
        DropDownpickerview.delegate = self
        DropDownpickerview.dataSource = self
        RightSumTxtFld.inputView = DropDownpickerview

       
    }
    
    @IBAction func RightSumDropdownActionBtn(_ sender: UIButton) {
        
        RightSumTxtFld.becomeFirstResponder()

        
        
    }
    func OpenPickerView(){
        let Toolbar = UIToolbar(frame:CGRect(x: 0, y: 0, width: UIScreen.main.bounds.width, height:50))
         Toolbar.barStyle = .default
         Toolbar.items = [
         UIBarButtonItem(title: "Cancel", style: .plain, target: self, action: #selector(cancel)),
         UIBarButtonItem(barButtonSystemItem: .flexibleSpace, target: nil, action: nil),
         UIBarButtonItem(title: "SUBMIT", style: .done , target: self, action: #selector(SUBMIT) ) ]
         Toolbar.sizeToFit()
       RightSumTxtFld.inputAccessoryView = Toolbar
        RightSumTxtFld.inputView = DropDownpickerview
     
       
    }
    
    @objc func cancel() {
         
         if RightSumTxtFld.isFirstResponder{
             RightSumTxtFld.text = ""
         
         }
        view.endEditing(true)
            
     }
    @objc func SUBMIT() {

        if RightSumTxtFld.isFirstResponder{
        
       let selectIDtype = DropdownArrary[DropDownpickerview.selectedRow(inComponent:0)]
            RightSumTxtFld.text = selectIDtype
        }
        view.endEditing(true)
    }

}
extension ChoosePlanVC:UIPickerViewDelegate,UIPickerViewDataSource{
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        1
    }
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        DropdownArrary.count
        
    }
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String?{
        

            return DropdownArrary[row]
            
            
        }
        
        func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
            
            RightSumTxtFld.text = DropdownArrary[row]
            
        }
        
 
    
}
extension ChoosePlanVC : UICollectionViewDelegate,UICollectionViewDataSource,UICollectionViewDelegateFlowLayout {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        if collectionView == SelfCollectionView{
            return 2
        }else{
            return 3
        }

        
        
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {

        if collectionView == SelfCollectionView{
            let cell2 = collectionView.dequeueReusableCell(withReuseIdentifier:"CELLSelf", for: indexPath) as! CELLSelf
            return cell2
            
        }else {
            let cell = collectionView.dequeueReusableCell(withReuseIdentifier:"ChoosePlanCELL", for: indexPath) as! ChoosePlanCELL
            return cell
        }
        
    }
    
}

extension  ChoosePlanVC:UITableViewDelegate,UITableViewDataSource{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 22
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "TableCELL", for: indexPath) as! TableCELL
     

        return cell
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 130
    }
}
extension ChoosePlanVC:UITextFieldDelegate{
 func textFieldShouldBeginEditing(_ textField: UITextField) -> Bool {
     
     
     let location: String = RightSumTxtFld.text!
  let geocoder: CLGeocoder = CLGeocoder()
  geocoder.geocodeAddressString(location, completionHandler: {(placemarks: [CLPlacemark]?, error: Error?) -> Void in
      if ((placemarks?.count)! > 0) {
          let placemark: CLPlacemark = (placemarks?[0])!
          let country : [String] = [placemark.country!]
          
          self.DropdownArrary = country
          
          let state: String = placemark.administrativeArea!
          print(state)
      }
  } )
     return true
    }
    
    func textField(_ textField: UITextField, shouldChangeCharactersIn range: NSRange, replacementString string: String) -> Bool {
        return true
    }
}
