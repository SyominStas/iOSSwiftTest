//
// Created by Stas Syomin on 09.11.15.
// Copyright (c) 2015 FLOTU. All rights reserved.
//

import Foundation

class ACTChatsDisplayItem: NSObject {

    let avatarUrl: String
    let userName: String
    let text: String
    let newCount: String
    let date: String

    init(avatarUrl: String, userName: String, text: String, newCount: String, date: String) {
        self.avatarUrl = avatarUrl
        self.userName = userName
        self.text = text
        self.newCount = newCount
        self.date = date
        super.init()
    }

}
