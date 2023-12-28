//SelectPlanCELL
//  MultipleSectionVCTwo.swift
//  APlusCalculator
//
//  Created by ravit chaudhary on 04/04/23.
//

import UIKit

class MultipleSectionVCTwo: UIViewController {
    @IBOutlet var FirstcollectionvW: UICollectionView!
    @IBOutlet var SelectionPlanCollectionVW: UICollectionView!
    
    @IBOutlet var SelfCollectionVW: UICollectionView!
    
    @IBOutlet var SpouseCollectionVW: UICollectionView!
    
    @IBOutlet var DiscountForYouTableVW: UITableView!
    override func viewDidLoad() {
        super.viewDidLoad()

        
    }
    



}
extension MultipleSectionVCTwo : UICollectionViewDelegate,UICollectionViewDataSource,UICollectionViewDelegateFlowLayout {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        if collectionView == FirstcollectionvW{
            return 2
        }else if collectionView == SelectionPlanCollectionVW{
            return 3
        }else if collectionView == SelfCollectionVW{
            return 3
        }else if collectionView == SpouseCollectionVW{
            return 3
        }
        
        
        return 10
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        
        if collectionView == FirstcollectionvW {
            let cell2 = collectionView.dequeueReusableCell(withReuseIdentifier:"TwoSunInsuredCELL", for: indexPath) as! TwoSunInsuredCELL
            return cell2
            
        }else if collectionView == SelectionPlanCollectionVW{
            let cell3 = collectionView.dequeueReusableCell(withReuseIdentifier:"TwoSelectPlanCELL", for: indexPath) as! TwoSelectPlanCELL
            return cell3
        }else if collectionView == SelfCollectionVW{
            let cell4 = collectionView.dequeueReusableCell(withReuseIdentifier:"TwoSelfCELL", for: indexPath) as! TwoSelfCELL
            return cell4
        }else if collectionView == SpouseCollectionVW{
            let cell5 = collectionView.dequeueReusableCell(withReuseIdentifier:"TwoSpouseCELL", for: indexPath) as! TwoSpouseCELL
            return cell5
        }
        return UICollectionViewCell()
        
        
    }
    
 
}
extension MultipleSectionVCTwo:UITableViewDelegate,UITableViewDataSource{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 10
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "TwoTableCELL", for: indexPath) as! TwoTableCELL
        
        
        return cell
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 130
    }
}
