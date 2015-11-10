//
// Created by Stas Syomin on 09.11.15.
// Copyright (c) 2015 FLOTU. All rights reserved.
//

import Foundation

class ACTChatsPresenter: NSObject, ACTChatsModuleInterface, ACTChatsInteractorOutput {

    var interactor: ACTChatsInteractorInput!
    var wireframe: ACTChatsWireframe!
    var userInterface: ACTChatsUserInterface!

    //MARK: - ACTChatsModuleInterface

    func updateUserInterface() {
        self.interactor.fetchChats()
    }

    //MARK: - ACTChatsInteractorOutout

    func didfetchChats(chats: [ACTChat]) {
        let displayItems = ACTChatsCollector().collect(chats)
        self.userInterface.showDisplayItems(displayItems)
    }

    func didFailFetchChats(error: NSError) {

    }

}
