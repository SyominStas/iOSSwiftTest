//
// Created by Stas Syomin on 10.11.15.
// Copyright (c) 2015 FLOTU. All rights reserved.
//

import Foundation
import ObjectMapper

typealias ACTChatsErrorClosure = ([ACTChat]?, NSError?) -> Void

class ACTApiManager: NSObject {

    func getChats(offset: Int = 0, limit: Int = 5, completion: ACTChatsErrorClosure? = nil) {
        var dict: NSArray?
        if let path = NSBundle.mainBundle().pathForResource("data", ofType: "plist") {
            dict = NSArray(contentsOfFile: path)
        }
        if let JSON = dict {
            let chats: [ACTChat]? = Mapper().mapArray(JSON)
            completion?(chats, nil)
        } else {
            completion?(nil, nil)
        }
     }

}
