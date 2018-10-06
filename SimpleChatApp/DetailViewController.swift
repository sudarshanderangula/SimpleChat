//
//  DetailViewController.swift
//  SimpleChatApp
//
//  Created by Sudarshan on 07/07/18.
//  Copyright © 2018 Sudarshan. All rights reserved.
//

import UIKit

class DetailViewController: UIViewController,UITableViewDataSource, UITableViewDelegate, UITextFieldDelegate {
   
    @IBOutlet weak var profile_Image: UIImageView!
    @IBOutlet weak var tableView2: UITableView!
    @IBOutlet weak var textField: UITextField!
    
var textArr = ["Hello, Good morning", "Hello, Good Afternoon", "Hello, Good Evening"]
    override func viewDidLoad() {
        super.viewDidLoad()

        profile_Image.layer.cornerRadius = profile_Image.frame.size.height/2
        let tapGesture = UITapGestureRecognizer(target: self, action: #selector(self.tap(gesture:)))
        self.view.addGestureRecognizer(tapGesture)
        textField.delegate = self
        
      
    }
    
    @IBAction func backButtonAction(_ sender: Any) {
        self.navigationController?.popViewController(animated: true)
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return textArr.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "detailTableViewCell") as! DetailTableViewCell
        cell.detailTextLbl.text = textArr[indexPath.row]
        return cell
    }
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 50
    }
    
    @objc func tap(gesture: UITapGestureRecognizer) {
        textField.resignFirstResponder()
        
    }
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        textField.resignFirstResponder()
        return true
    }

}
