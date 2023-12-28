//
//  MultipleSelectionVC.swift
//  APlusCalculator
//
//  Created by ravit chaudhary on 03/04/23.
//

import UIKit

class MultipleSelectionVC: UIViewController {

    @IBOutlet var collectionvW: UICollectionView!
    @IBOutlet var SelectionPlanCollectionVW: UICollectionView!
    
    @IBOutlet var SelfCollectionVW: UICollectionView!
    
    @IBOutlet var SpouseCollectionVW: UICollectionView!
    
    @IBOutlet var ChildFirstCollectionVW: UICollectionView!
    
    @IBOutlet var MotherCollectionVW: UICollectionView!
    
    @IBOutlet var DiscountForYouTableVW: UITableView!
    override func viewDidLoad() {
        super.viewDidLoad()


    }
    


}
extension MultipleSelectionVC : UICollectionViewDelegate,UICollectionViewDataSource,UICollectionViewDelegateFlowLayout {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        if collectionView == collectionvW{
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
        }
        
        
        return 10
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        
        if collectionView == collectionvW {
            let cell2 = collectionView.dequeueReusableCell(withReuseIdentifier:"SumInsuredCELL", for: indexPath) as! SumInsuredCELL
            return cell2
            
        }else if collectionView == SelectionPlanCollectionVW{
            let cell3 = collectionView.dequeueReusableCell(withReuseIdentifier:"SelectPlanCELL", for: indexPath) as! SelectPlanCELL
            return cell3
        }else if collectionView == SelfCollectionVW{
            let cell4 = collectionView.dequeueReusableCell(withReuseIdentifier:"SelfCELL", for: indexPath) as! SelfCELL
            return cell4
        }else if collectionView == SpouseCollectionVW{
            let cell5 = collectionView.dequeueReusableCell(withReuseIdentifier:"SpouseCELL", for: indexPath) as! SpouseCELL
            return cell5
        }else if collectionView == ChildFirstCollectionVW{
            let cell5 = collectionView.dequeueReusableCell(withReuseIdentifier:"ChildFirstCELL", for: indexPath) as! ChildFirstCELL
            return cell5
        }else if collectionView == MotherCollectionVW{
            let cell5 = collectionView.dequeueReusableCell(withReuseIdentifier:"MotherCELL", for: indexPath) as! MotherCELL
            return cell5
        }
        return UICollectionViewCell()
        
        
    }
    
 
}
extension MultipleSelectionVC:UITableViewDelegate,UITableViewDataSource{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 10
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "DiscountTableVWCELL", for: indexPath) as! DiscountTableVWCELL
        
        
        return cell
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 130
    }
}
