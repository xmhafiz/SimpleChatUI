//
//  MessageStore.swift
//  ChatSample
//
//  Created by Hafiz on 20/09/2019.
//  Copyright © 2019 Nibs. All rights reserved.
//

import Foundation

struct MessageStore {
    static func getAll() -> [Message] {
        return [
            Message(text: "Lorem ipsum dolor sit amet", side: .left),
            Message(text: "Consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua", side: .left),
            Message(text: "Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae", side: .right),
            Message(text: "Excepteur sint occaecat cupidatat non proident", side: .left),
            Message(text: "Sed ut perspiciatis", side: .right),
            Message(text: "qui dolorem ipsum quia dolor sit amet, consectetur", side: .left),
            Message(text: "Vel illum qui dolorem eum fugiat", side: .right),
            Message(text: "At vero eos et accusamus et iusto odio dignissimos", side: .left),
            Message(text: "Et harum quidem rerum facilis", side: .right),
            Message(text: "Lorem ipsum dolor sit amet", side: .left),
            Message(text: "Vel illum qui dolorem eum fugiat", side: .left),
            Message(text: "Lorem ipsum", side: .left),
            Message(text: "Lorem ipsum", side: .right),
            Message(text: "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua", side: .right),
            Message(text: "Et harum quidem rerum facilis", side: .right),
        ]
    }
}
