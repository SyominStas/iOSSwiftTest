//
// Created by Stas Syomin on 10.11.15.
// Copyright (c) 2015 FLOTU. All rights reserved.
//

import Foundation
import UIKit

class ACTAppDelendencies: NSObject {

    func installRootViewControllerIntoWindow(window: UIWindow) {
        let wireframe = ACTLoadingWireframe()
        let navigationController = wireframe.instantiateLoadingUserInterface()
        window.rootViewController = navigationController
    }

}
