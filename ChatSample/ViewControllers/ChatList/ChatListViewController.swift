//
//  ChatListViewController.swift
//  ChatSample
//
//  Created by Hafiz on 22/10/2019.
//  Copyright © 2019 Nibs. All rights reserved.
//

import UIKit

class ChatListViewController: UIViewController {
    var chats = [Chat]()
    @IBOutlet weak var tableView: UITableView!
    override func viewDidLoad() {
        super.viewDidLoad()
        self.title = "Chats"
        setupTable()
        fetchData()
    }
    
    func setupTable() {
        // config tableView
        tableView.rowHeight = UITableView.automaticDimension
        tableView.dataSource = self
        tableView.delegate = self
        tableView.backgroundColor = UIColor(hexString: "E4DDD6")
        tableView.tableFooterView = UIView()
        // cell setup
        tableView.register(UINib(nibName: "ChatListViewCell", bundle: nil), forCellReuseIdentifier: "ChatListViewCell")
    }
    
    func fetchData() {
        chats = ChatStore.getAll()
        tableView.reloadData()
    }
}

extension ChatListViewController: UITableViewDataSource, UITableViewDelegate {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return chats.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let chat = chats[indexPath.row]
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "ChatListViewCell") as! ChatListViewCell
        cell.configure(chat: chat)
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        performSegue(withIdentifier: "showChatDetail", sender: nil)
    }
}
