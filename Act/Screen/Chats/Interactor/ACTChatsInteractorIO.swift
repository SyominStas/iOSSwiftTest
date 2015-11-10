//
// Created by Stas Syomin on 09.11.15.
// Copyright (c) 2015 FLOTU. All rights reserved.
//

import Foundation

protocol ACTChatsInteractorInput: class {
    func fetchChats()
}

protocol ACTChatsInteractorOutput: class {
    func didfetchChats(chats: [ACTChat])
    func didFailFetchChats(error: NSError)
}
