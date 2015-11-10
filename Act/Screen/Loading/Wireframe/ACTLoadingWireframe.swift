//
// Created by Stas Syomin on 10.11.15.
// Copyright (c) 2015 FLOTU. All rights reserved.
//

import UIKit
import STPTransitions

class ACTLoadingWireframe {

    var userInterface: ACTLoadingViewController!

    func instantiateLoadingUserInterface() -> UINavigationController {
        let userInterface = UIStoryboard.homeStoryboard().instantiateViewControllerWithIdentifier("ACTLoadingViewController") as! ACTLoadingViewController
        let navigationController = UINavigationController(rootViewController: userInterface)
        navigationController.setNavigationBarHidden(true, animated: false)
        let presenter = ACTLoadingPresenter()
        presenter.userInterface = userInterface
        //let interactor = ACTLoadingInteractor(apiManager: ACTApiManager())
        //interactor.output = presenter
        userInterface.eventHandler = presenter
        //presenter.interactor = interactor
        presenter.wireframe = self
        self.userInterface = userInterface
        return navigationController
    }

    func showChatsUserInterface() {
        let wireframe = ACTChatsWireframe()
        wireframe.pushChatsUserInterface(self.userInterface, navigationController: self.userInterface.navigationController!)
    }

}
