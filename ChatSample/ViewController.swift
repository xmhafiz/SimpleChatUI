//
//  ViewController.swift
//  ChatSample
//
//  Created by Hafiz on 20/09/2019.
//  Copyright © 2019 Nibs. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var tableView: UITableView!
    var messages = [Message]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // set title
        title = "Lorem Ipsum"
        
        // config tableView
        tableView.rowHeight = UITableView.automaticDimension
        tableView.dataSource = self
        tableView.backgroundColor = UIColor(hexString: "E4DDD6")
        tableView.tableFooterView = UIView()
        // cell setup
        tableView.register(UINib(nibName: "RightViewCell", bundle: nil), forCellReuseIdentifier: "RightViewCell")
        tableView.register(UINib(nibName: "LeftViewCell", bundle: nil), forCellReuseIdentifier: "LeftViewCell")
        
        fetchData()
    }
    
    func fetchData() {
        messages = MessageStore.getAll()
        tableView.reloadData()
    }
}

extension ViewController: UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return messages.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let message = messages[indexPath.row]
        if message.side == .left {
            let cell = tableView.dequeueReusableCell(withIdentifier: "LeftViewCell") as! LeftViewCell
            cell.configureCell(message: message)
            return cell
        }
        else {
            let cell = tableView.dequeueReusableCell(withIdentifier: "RightViewCell") as! RightViewCell
            cell.configureCell(message: message)
            return cell
        }
    }
    
}

