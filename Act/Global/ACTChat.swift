//
// Created by Stas Syomin on 10.11.15.
// Copyright (c) 2015 FLOTU. All rights reserved.
//

import Foundation
import ObjectMapper
import CoreFoundation

class ACTChat: NSObject, Mappable {

    var actID: Int!
    var fullname: String!
    var avatarUrl: String?
    var message: String!
    var unreadMessagesCount: Int!
    var sendingDate: NSDate!

    required init?(_ map: Map) {
        super.init()
        mapping(map)
    }

    func mapping(map: Map) {
        actID <- map["identifier"]
        fullname <- map["fullname"]
        avatarUrl <- map["avatarURL"]
        message <- map["message"]
        unreadMessagesCount <- map["unreadMessagesCount"]
        sendingDate <- map["sendingDate"]

       /* var date: String!
        date <- map["sendingDate"]
        date =  date.substringWithRange(Range<String.Index>(start: date.endIndex.advancedBy(-8), end: date.endIndex))
        sendingDate = date.toDate(formatString: "HH:mm:ss")*/
    }

}
