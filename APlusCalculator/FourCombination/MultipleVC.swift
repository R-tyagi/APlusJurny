//
//  MultipleVC.swift
//  APlusCalculator
//
//  Created by ravit chaudhary on 03/04/23.
//

import UIKit
import CoreLocation
class MultipleVC: UIViewController,CLLocationManagerDelegate {
    @IBOutlet var FirstcollectionvW: UICollectionView!
    @IBOutlet var SelectionPlanCollectionVW: UICollectionView!
    
    @IBOutlet var SelfCollectionVW: UICollectionView!
    
    @IBOutlet var SpouseCollectionVW: UICollectionView!
    
    @IBOutlet var ChildFirstCollectionVW: UICollectionView!
    
    @IBOutlet var MotherCollectionVW: UICollectionView!
    
    @IBOutlet var FatherCollectionVW: UICollectionView!
    @IBOutlet var DiscountForYouTableVW: UITableView!
    override func viewDidLoad() {
        super.viewDidLoad()


        
        
        
     
    }

}
extension MultipleVC : UICollectionViewDelegate,UICollectionViewDataSource,UICollectionViewDelegateFlowLayout {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        if collectionView == FirstcollectionvW{
            return 2
        }else if collectionView == SelectionPlanCollectionVW{
            return 3
        }else if collectionView == SelfCollectionVW{
            return 4
        }else if collectionView == SpouseCollectionVW{
            return 4
        }else if collectionView == ChildFirstCollectionVW{
            return 4
        }else if collectionView == MotherCollectionVW{
            return 4
        }else if collectionView == FatherCollectionVW{
            return 4
        }
        
        
        return 10
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        
        if collectionView == FirstcollectionvW {
            let cell2 = collectionView.dequeueReusableCell(withReuseIdentifier:"SUMINSUREDcellFather", for: indexPath) as! SUMINSUREDcellFather
            return cell2
            
        }else if collectionView == SelectionPlanCollectionVW{
            let cell3 = collectionView.dequeueReusableCell(withReuseIdentifier:"SelectPlanFatherCELL", for: indexPath) as! SelectPlanFatherCELL
            return cell3
        }else if collectionView == SelfCollectionVW{
            let cell4 = collectionView.dequeueReusableCell(withReuseIdentifier:"SelfFatherCELL", for: indexPath) as! SelfFatherCELL
            return cell4
        }else if collectionView == SpouseCollectionVW{
            let cell5 = collectionView.dequeueReusableCell(withReuseIdentifier:"SpouseFatherCELL", for: indexPath) as! SpouseFatherCELL
            return cell5
        }else if collectionView == ChildFirstCollectionVW{
            let cell5 = collectionView.dequeueReusableCell(withReuseIdentifier:"ChildFirsFatherCELL", for: indexPath) as! ChildFirsFatherCELL
            return cell5
        }else if collectionView == MotherCollectionVW{
            let cell5 = collectionView.dequeueReusableCell(withReuseIdentifier:"MotherFatherCELL", for: indexPath) as! MotherFatherCELL
            return cell5
        }else if collectionView == FatherCollectionVW{
            let cell6 = collectionView.dequeueReusableCell(withReuseIdentifier:"FatherCELL", for: indexPath) as! FatherCELL
            return cell6
        }
        return UICollectionViewCell()
        
        
    }
    
 
}
extension MultipleVC:UITableViewDelegate,UITableViewDataSource{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 10
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "DiscountforyouFATHERtableCELL", for: indexPath) as! DiscountforyouFATHERtableCELL
        
        
        return cell
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 130
    }
}
