//
//  AllGroupViewController.swift
//  Weather
//
//  Created by admin on 07/03/2019.
//  Copyright © 2019 admin. All rights reserved.
//

import UIKit



class AllGroupViewController: UIViewController {
    

    @IBOutlet weak var tableView: UITableView!
    
    let persons = [PersonGroup.init(photo: UIImage(named: "circles")!, name:"Спорт и здоровый образ жизни"),PersonGroup.init(photo:UIImage(named: "car")! , name: "Авто любители"),PersonGroup.init(photo: UIImage(named: "kompjuter")!, name: "Уроки по swift")]
    
   

    override func viewDidLoad() {
        super.viewDidLoad()
        
        tableView.dataSource = self
        
        
        
        

      
    }
   
}




extension AllGroupViewController : UITableViewDataSource{
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }

    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return persons.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "GroupCell", for: indexPath) as! AllGroupViewCell
        let person = persons[indexPath.row]
        cell.groupName.text = person.name
        cell.photoCell.image = person.photo
        cell.photoCell.layer.cornerRadius = 15
        cell.photoCell.layer.masksToBounds = true
        cell.viewPhotoCell.layer.cornerRadius = 20
        cell.viewPhotoCell.layer.shadowOpacity = 0.5
        
        return cell
        
    }
    
    
}


