//
// Created by Stas Syomin on 10.11.15.
// Copyright (c) 2015 FLOTU. All rights reserved.
//

import Foundation

class ACTLoadingPresenter: NSObject, ACTLoadingModuleInterface {

    var userInterface: ACTLoadingUserInterface!
    var wireframe: ACTLoadingWireframe!

    //MARK: - ACTLoadingModuleInterface

    func updateUserInterface() {
        self.callFunctionWithDelay()
    }

    //MARK - Helpers

    private func callFunctionWithDelay() {
        var triggerTime = (Int64(NSEC_PER_SEC) * 1)
        dispatch_after(dispatch_time(DISPATCH_TIME_NOW, triggerTime), dispatch_get_main_queue(), { () -> Void in
            self.wireframe.showChatsUserInterface()
        })
    }

}
