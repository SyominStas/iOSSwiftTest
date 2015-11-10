//
// Created by Stas Syomin on 10.11.15.
// Copyright (c) 2015 FLOTU. All rights reserved.
//

import Foundation

class ACTChatsCollector: NSObject {

    func collect(chats: [ACTChat]) -> [ACTChatsDisplayItem] {
        var items: [ACTChatsDisplayItem] = []
        for chat: ACTChat in chats {
            let avatarUrl = chat.avatarUrl != nil ? chat.avatarUrl! : ""
            let userName = chat.fullname
            let text = chat.message

            var newCount = ""
            if chat.unreadMessagesCount > 0 {
                newCount = "+ " + String(chat.unreadMessagesCount) + " messages"
            }

            let formatter = NSDateFormatter()
            formatter.dateFormat = "hh:mm a"
            let date = formatter.stringFromDate(chat.sendingDate)

            let displayItem = ACTChatsDisplayItem(avatarUrl: avatarUrl, userName: userName, text: text, newCount: newCount, date: date)
            items.append(displayItem)
        }
        return items
    }

}
