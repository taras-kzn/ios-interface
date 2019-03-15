//
//  FriendViewController.swift
//  Weather
//
//  Created by admin on 08/03/2019.
//  Copyright © 2019 admin. All rights reserved.
//

import UIKit

class FriendViewController: UIViewController {
    
    
    @IBOutlet weak var tableView: UITableView!
    
    
    
    var myFriend = [
        "Адель",
        "Колян",
        "Антон",
        "Руслан",
        "Владимир"
    ]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.dataSource = self

  
    }
 
}

extension FriendViewController : UITableViewDataSource{
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return myFriend.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "MyFriendCell", for: indexPath) as! FriendTableViewCell
        let friend = myFriend[indexPath.row]
        cell.friendName.text = friend
        return cell
        
    }
    
    
}

