//
//  ViewController.swift
//  SimpleChatApp
//
//  Created by Sudarshan on 07/07/18.
//  Copyright © 2018 Sudarshan. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    @IBOutlet weak var table: UITableView!
    var namesList = ["davensky", "samson", "cessie", "jhon dipp", "mary"]
    var messageList = ["Hii", "Whatsupppp?", "Dude, How r u?", "Byee", "Good Morning"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
       
         self.table.separatorStyle = .none
        self.navigationController?.isNavigationBarHidden = true
    }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return namesList.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell") as! TableViewCell
        cell.imgView.image = UIImage(named: namesList[indexPath.row])
        cell.label_Name.text = namesList[indexPath.row]
        cell.label_Message.text = messageList[indexPath.row]
        cell.imgView.layer.cornerRadius = 25
        cell.imgView.clipsToBounds = true    
        return cell
    }
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 70
    }
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        tableView.deselectRow(at: indexPath, animated: true)
        let detailVC = storyboard?.instantiateViewController(withIdentifier: "DetailViewController")
        self.navigationController?.pushViewController(detailVC!, animated: true)
    }



}

