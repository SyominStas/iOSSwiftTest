//
// Created by Stas Syomin on 10.11.15.
// Copyright (c) 2015 FLOTU. All rights reserved.
//

import Foundation
import UIKit
import SDWebImage

class ACTChatsCollectionViewDataSource: NSObject, UICollectionViewDataSource {

    var displayItems: [ACTChatsDisplayItem]?

    private var eventHandler: ACTChatsModuleInterface!

    init(collectionView: UICollectionView, eventHandler: ACTChatsModuleInterface) {
        super.init()
        collectionView.registerNib(UINib(nibName: "ACTChatsCell", bundle: NSBundle.mainBundle()), forCellWithReuseIdentifier: ACTChatsCell.reuseIdentifier)
        self.eventHandler = eventHandler
    }

    //MARK: - UICollectionViewDataSource

    func numberOfSectionsInCollectionView(collectionView: UICollectionView) -> Int {
        return 1
    }

    func collectionView(collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        if let items = self.displayItems {
            return items.count
        } else {
            return 0
        }
    }

    func collectionView(collectionView: UICollectionView, cellForItemAtIndexPath indexPath: NSIndexPath) -> UICollectionViewCell {
        let cell: ACTChatsCell = collectionView.dequeueReusableCellWithReuseIdentifier(ACTChatsCell.reuseIdentifier, forIndexPath: indexPath) as! ACTChatsCell
        if let items = self.displayItems {
            let item = items[indexPath.row]
            cell.userNameLabel.text = item.userName
            cell.textLabel.text = item.text
            cell.newMessagesLabel.text = item.newCount
            cell.dateLabel.text = item.date

                cell.picImageView.sd_setImageWithURL(NSURL(string: item.avatarUrl), placeholderImage: UIImage.getImageForChatAvatar())
        }
        return cell
    }

}