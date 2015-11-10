//
// Created by Stas Syomin on 09.11.15.
// Copyright (c) 2015 FLOTU. All rights reserved.
//

import UIKit

class ACTChatsViewController: UIViewController, ACTChatsUserInterface {

    var eventHandler: ACTChatsModuleInterface!

    @IBOutlet var collectionView: UICollectionView!
    @IBOutlet var navBarView: UIView!

    private var collectionViewDataSource: ACTChatsCollectionViewDataSource!
    private var collectionViewDelegate: ACTChatsCollectionViewDelegate!

    //MARK: - Life Circle

    override func viewDidLoad() {
        super.viewDidLoad()
        self.setupCollectionView()
    }

    override func viewWillAppear(animated: Bool) {
        super.viewWillAppear(animated)
        self.eventHandler.updateUserInterface()
    }

    //MARK: - View Helpers

    private func setupCollectionView() {
        self.collectionViewDataSource = ACTChatsCollectionViewDataSource(collectionView: self.collectionView, eventHandler: self.eventHandler)
        self.collectionViewDelegate = ACTChatsCollectionViewDelegate()
        self.collectionView.dataSource = self.collectionViewDataSource
        self.collectionView.delegate = self.collectionViewDelegate
    }

    //MARK: - ACTChatsUserInterface

    func showDisplayItems(items: [ACTChatsDisplayItem]) {
        self.collectionViewDataSource.displayItems = items
        self.collectionViewDelegate.displayItems = items
        self.collectionView.reloadData()
    }

    //MARK: - Actions

}
