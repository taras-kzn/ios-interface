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
        PersonGroup(photo: UIImage(named: "circles")!,name : "Ахметвалеев Рустем"),
        PersonGroup(photo: UIImage(named: "car")!, name: "Зарипоп Руслан"),
        PersonGroup(photo: UIImage(named: "santaKlaus")!, name: "Незамов Дамир")
        
    ]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.dataSource = self
        tableView.delegate = self

  
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "shouVC"{
            if let vc = segue.destination as? PhotoViewController{
                let menu = sender as! PersonGroup
                vc.photoColection = [menu]
            }
        }
    }
 
}

extension FriendViewController : UITableViewDataSource,UITableViewDelegate{
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return myFriend.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "MyFriendCell", for: indexPath) as! FriendTableViewCell
        let friend = myFriend[indexPath.row]
        cell.friendCell.text = friend.name
        cell.photoCell.image = friend.photo
        cell.photoCell.layer.cornerRadius = 15
        cell.photoCell.layer.masksToBounds = true
        cell.viewPhotoCell.layer.cornerRadius = 20
        cell.viewPhotoCell.layer.shadowOpacity = 0.5
        
        return cell
        
    }
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let friend = myFriend[indexPath.row]
        self.performSegue(withIdentifier: "shouVC", sender: friend)
    }
    
    
}

