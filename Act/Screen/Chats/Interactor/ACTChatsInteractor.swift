//
// Created by Stas Syomin on 09.11.15.
// Copyright (c) 2015 FLOTU. All rights reserved.
//

import Foundation

class ACTChatsInteractor: NSObject, ACTChatsInteractorInput {

    var apiManager: ACTApiManager!
    var output: ACTChatsInteractorOutput!

    init(apiManager: ACTApiManager) {
        self.apiManager = apiManager
    }

    //MARK: - ACTChatsInteractorInput

    func fetchChats() {
        self.apiManager.getChats() {
            chats, error in
            if let error = error {
                //self.output.didFailFetchChats()
            } else if let chats = chats {
                self.output.didfetchChats(chats)
            } else {
                //self.output.didFailFetchChats()
            }
        }
    }


}
