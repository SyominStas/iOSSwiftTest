//
// Created by Stas Syomin on 09.11.15.
// Copyright (c) 2015 FLOTU. All rights reserved.
//

import Foundation
import UIKit
import STPTransitions

class ACTChatsWireframe: NSObject {

    var userInterface: ACTChatsViewController!

    func pushChatsUserInterface(fromViewController: UIViewController, navigationController: UINavigationController) {
        let userInterface = UIStoryboard.homeStoryboard().instantiateViewControllerWithIdentifier("ACTChatsViewController") as! ACTChatsViewController
        navigationController.setNavigationBarHidden(true, animated: false)
        let presenter = ACTChatsPresenter()
        presenter.userInterface = userInterface
        let interactor = ACTChatsInteractor(apiManager: ACTApiManager())
        interactor.output = presenter
        userInterface.eventHandler = presenter
        presenter.interactor = interactor
        presenter.wireframe = self
        self.userInterface = userInterface
        navigationController.pushViewController(userInterface, usingTransition: ACTShowUpTransition())
    }

}
