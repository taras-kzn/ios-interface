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
    
    var allGroup = [
        "Спорт и здоровый образ жизни",
        "Авто любители",
        "Одежда",
        "PokerStars",
        "Уроки по swift",
        "Киноманы"
    ]

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
        return allGroup.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "GroupCell", for: indexPath) as! AllGroupViewCell
        let group = allGroup[indexPath.row]
        cell.groupName.text = group
        return cell
        
    }
    
    
}


