//
//  ChatStore.swift
//  ChatSample
//
//  Created by Hafiz on 22/10/2019.
//  Copyright © 2019 Nibs. All rights reserved.
//

import Foundation

struct ChatStore {
    static func getAll() -> [Chat] {
        let list = [
            Chat(title: "High School Football Team, Malaysia", imageName: "1", latestMessage: "Lorem ipsum dolor sit amet", sender: "Bob"),
            Chat(title: "Lorem Ipsum Group", imageName: "2", latestMessage: "Excepteur sint occaecat cupidatat", sender: "Fendi"),
            Chat(title: "John Smith", imageName: "3", latestMessage: "Excepteur sint occaecat cupidatat", sender: nil),
            Chat(title: "Stackoverflow", imageName: "4", latestMessage: "OK, got it 👍🏼", sender: "Mohamed Ali"),
            Chat(title: "ABC Developers Inc", imageName: "5", latestMessage: "Excepteur sint occaecat cupidatat", sender: "You"),
            Chat(title: "Alice", imageName: "6", latestMessage: "Consectetur adipiscing elit", sender: nil),
            Chat(title: "Georgetown", imageName: "7", latestMessage: "Excepteur sint occaecat cupidatat", sender: "Ronaldo"),
            Chat(title: "Pak Mat Tempe", imageName: "8", latestMessage: "See ya!", sender: nil),
            Chat(title: "Hackathon Selangor", imageName: "9", latestMessage: "Thanks man!", sender: "Syafiq"),
            Chat(title: "Futsal A-Team", imageName: "10", latestMessage: "Thanks man", sender: "Falcao"),
            Chat(title: "MH Zulfadhli", imageName: "11", latestMessage: "Got new update here guys, please come here and see quickly", sender: nil),
            Chat(title: "Ex-SK Klang", imageName: "12", latestMessage: "Excepteur sint occaecat cupidatat", sender: "Nazirah"),
            Chat(title: "Omak Den", imageName: "13", latestMessage: "See ya! ❤️", sender: nil),
            Chat(title: "MH Zulfadhli", imageName: "14", latestMessage: "Got new update here guys, please come here and see quickly", sender: nil)
        ]
        
        return list
    }
}
