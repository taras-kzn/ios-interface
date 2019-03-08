//
//  GroupViewController.swift
//  Weather
//
//  Created by admin on 07/03/2019.
//  Copyright © 2019 admin. All rights reserved.
//

import UIKit

class GroupViewController: UIViewController {
    
    
       

    @IBOutlet weak var tableView: UITableView!
    
    var myGroup = [String]()
    
    @IBAction func addGroup(segue: UIStoryboardSegue) {
        if segue.identifier == "addGroup"{
            let allGroupController = segue.source as! AllGroupViewController
            if let indexPath = allGroupController.tableView.indexPathForSelectedRow{
                let group = allGroupController.allGroup[indexPath.row]
                if !myGroup.contains(group){
                    myGroup.append(group)
                    tableView.reloadData()
                }
                
            }
        }
        
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        tableView.dataSource = self
        
        
        
    }
}

extension GroupViewController : UITableViewDataSource{
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return myGroup.count
    }
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "MyGroupCell", for: indexPath) as! GroupTableViewCell
        let group = myGroup[indexPath.row]
        cell.groupName.text = group
        return cell
    }
    func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath){
        if editingStyle == .delete{
            myGroup.remove(at: indexPath.row)
            tableView.deleteRows(at: [indexPath], with: .fade)
        }
        
    }
    
}

