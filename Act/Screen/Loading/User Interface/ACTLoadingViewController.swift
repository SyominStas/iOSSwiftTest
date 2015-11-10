//
// Created by Stas Syomin on 10.11.15.
// Copyright (c) 2015 FLOTU. All rights reserved.
//

import UIKit

class ACTLoadingViewController: UIViewController, ACTLoadingUserInterface {

    @IBOutlet var iconImageView: UIImageView!

    var eventHandler: ACTLoadingModuleInterface!

    //MARK: - Life Circle

    override func viewDidLoad() {
        super.viewDidLoad()
        self.setupImageView()
    }

    override func viewWillAppear(animated: Bool) {
        super.viewWillAppear(animated)
        self.eventHandler.updateUserInterface()
    }

    //MARK: - View Helpers

    private func setupImageView() {
        let images: [UIImage] = [
            UIImage(named: "loading_act1")!,
            UIImage(named: "loading_act2")!,
            UIImage(named: "loading_act3")!,
            UIImage(named: "loading_act4")!,
            UIImage(named: "loading_act5")!,
            UIImage(named: "loading_act6")!,
        ]
        self.iconImageView.animationImages = images
        self.iconImageView.animationDuration = 1
        self.iconImageView.startAnimating()
    }

}
