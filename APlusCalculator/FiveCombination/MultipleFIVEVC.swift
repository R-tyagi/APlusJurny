//
//  MultipleFIVEVC.swift
//  APlusCalculator
//
//  Created by ravit chaudhary on 06/04/23.
//

import UIKit

class MultipleFIVEVC: UIViewController {
    @IBOutlet var FirstcollectionvW: UICollectionView!
    @IBOutlet var SelectionPlanCollectionVW: UICollectionView!
    
    @IBOutlet var SelfCollectionVW: UICollectionView!
    
    @IBOutlet var SpouseCollectionVW: UICollectionView!
    
    @IBOutlet var ChildFirstCollectionVW: UICollectionView!
    
    @IBOutlet var MotherCollectionVW: UICollectionView!
    
    @IBOutlet var FatherCollectionVW: UICollectionView!
    @IBOutlet var FatherinlawCollectionVW: UICollectionView!
    @IBOutlet var DiscountForYouTableVW: UITableView!
    override func viewDidLoad() {
        super.viewDidLoad()


        
        
        
     
    }

}
extension MultipleFIVEVC : UICollectionViewDelegate,UICollectionViewDataSource,UICollectionViewDelegateFlowLayout {
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
        }else if collectionView == FatherinlawCollectionVW{
            return 4
        }
        
        
        return 10
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        
        if collectionView == FirstcollectionvW {
            let cell2 = collectionView.dequeueReusableCell(withReuseIdentifier:"FirstCELL", for: indexPath) as! FirstCELL
            return cell2
            
        }else if collectionView == SelectionPlanCollectionVW{
            let cell3 = collectionView.dequeueReusableCell(withReuseIdentifier:"selectplanCELL", for: indexPath) as! selectplanCELL
            return cell3
        }else if collectionView == SelfCollectionVW{
            let cell4 = collectionView.dequeueReusableCell(withReuseIdentifier:"selfCELL", for: indexPath) as! selfCELL
            return cell4
        }else if collectionView == SpouseCollectionVW{
            let cell5 = collectionView.dequeueReusableCell(withReuseIdentifier:"spouseCELL", for: indexPath) as! spouseCELL
            return cell5
        }else if collectionView == ChildFirstCollectionVW{
            let cell5 = collectionView.dequeueReusableCell(withReuseIdentifier:"childCELL", for: indexPath) as! childCELL
            return cell5
        }else if collectionView == MotherCollectionVW{
            let cell5 = collectionView.dequeueReusableCell(withReuseIdentifier:"motherCELL", for: indexPath) as! motherCELL
            return cell5
        }else if collectionView == FatherCollectionVW{
            let cell6 = collectionView.dequeueReusableCell(withReuseIdentifier:"fatherCELL", for: indexPath) as! fatherCELL
            return cell6
        }else if collectionView == FatherinlawCollectionVW{
            let cell7 = collectionView.dequeueReusableCell(withReuseIdentifier:"fatherinlawCELL", for: indexPath) as! fatherinlawCELL
            return cell7
        }
        return UICollectionViewCell()
        
        
    }
    
 
}
extension MultipleFIVEVC:UITableViewDelegate,UITableViewDataSource{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 10
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "discountTBLVWCELL", for: indexPath) as! discountTBLVWCELL
        
        
        return cell
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 130
    }
}
