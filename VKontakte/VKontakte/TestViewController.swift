//
//  TestViewController.swift
//  Weather
//
//  Created by admin on 13/03/2019.
//  Copyright © 2019 admin. All rights reserved.
//

import UIKit

class TestViewController: UIViewController {
    
    
    var photo = [UIImage(named: "Image3")]
    

    @IBOutlet var colectionView: UIView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        colectionView.dataSource = self
        

        // Do any additional setup after loading the view.
    }
    
    
   

    

}
extension TestViewController : UICollectionViewDataSource{
    
    func numberOfSections(in collectionView: UICollectionView) -> Int {
        return photo.count
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int{
        return 1
    }
    
    
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "collectionView", for: indexPath) as! TestCollectionViewCell
        var friends = photo[indexPath.row]
        cell.photoCell.image = friends
        return cell
        
    }
        
        
    
    
    
}


