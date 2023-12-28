//
//  MultipleSixVC.swift
//  APlusCalculator
//
//  Created by ravit chaudhary on 06/04/23.
//

import UIKit

class MultipleSixVC: UIViewController {
    @IBOutlet var FirstcollectionvW: UICollectionView!
    @IBOutlet var SelectionPlanCollectionVW: UICollectionView!
    
    @IBOutlet var SelfCollectionVW: UICollectionView!
    
    @IBOutlet var SpouseCollectionVW: UICollectionView!
    
    @IBOutlet var ChildFirstCollectionVW: UICollectionView!
    
    @IBOutlet var MotherCollectionVW: UICollectionView!
    
    @IBOutlet var FatherCollectionVW: UICollectionView!
    @IBOutlet var FatherinlawCollectionVW: UICollectionView!
    @IBOutlet var MotherinlawCollectionVW: UICollectionView!
    @IBOutlet var DiscountForYouTableVW: UITableView!
    override func viewDidLoad() {
        super.viewDidLoad()


        
        
        
     
    }

}
extension MultipleSixVC : UICollectionViewDelegate,UICollectionViewDataSource,UICollectionViewDelegateFlowLayout {
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
        }else if collectionView == MotherinlawCollectionVW{
            return 4
        }
        
        
        return 10
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        
        if collectionView == FirstcollectionvW {
            let cell2 = collectionView.dequeueReusableCell(withReuseIdentifier:"CollectionFirstCELL", for: indexPath) as! CollectionFirstCELL
            return cell2
            
        }else if collectionView == SelectionPlanCollectionVW{
            let cell3 = collectionView.dequeueReusableCell(withReuseIdentifier:"CollectionSelectPlanCELL", for: indexPath) as! CollectionSelectPlanCELL
            return cell3
        }else if collectionView == SelfCollectionVW{
            let cell4 = collectionView.dequeueReusableCell(withReuseIdentifier:"CollectionSelfCELL", for: indexPath) as! CollectionSelfCELL
            return cell4
        }else if collectionView == SpouseCollectionVW{
            let cell5 = collectionView.dequeueReusableCell(withReuseIdentifier:"CollectionSpouseCELL", for: indexPath) as! CollectionSpouseCELL
            return cell5
        }else if collectionView == ChildFirstCollectionVW{
            let cell5 = collectionView.dequeueReusableCell(withReuseIdentifier:"CollectionChildCELL", for: indexPath) as! CollectionChildCELL
            return cell5
        }else if collectionView == MotherCollectionVW{
            let cell5 = collectionView.dequeueReusableCell(withReuseIdentifier:"CollectionMotherCELL", for: indexPath) as! CollectionMotherCELL
            return cell5
        }else if collectionView == FatherCollectionVW{
            let cell6 = collectionView.dequeueReusableCell(withReuseIdentifier:"CollectionfatherCELL", for: indexPath) as! CollectionfatherCELL
            return cell6
        }else if collectionView == FatherinlawCollectionVW{
            let cell7 = collectionView.dequeueReusableCell(withReuseIdentifier:"CollectionfatherinlawCELL", for: indexPath) as! CollectionfatherinlawCELL
            return cell7
        }else if collectionView == MotherinlawCollectionVW{
            let cell8 = collectionView.dequeueReusableCell(withReuseIdentifier:"CollectionmotherinlawCELL", for: indexPath) as! CollectionmotherinlawCELL
            return cell8
        }
        return UICollectionViewCell()
        
        
    }
    
 
}
extension MultipleSixVC:UITableViewDelegate,UITableViewDataSource{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 10
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "DisounttblCELL", for: indexPath) as! DisounttblCELL
        
        
        return cell
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 130
    }
}

