//
// Created by Stas Syomin on 10.11.15.
// Copyright (c) 2015 FLOTU. All rights reserved.
//

import Foundation
import UIKit

class ACTChatsCollectionViewDelegate: NSObject, UICollectionViewDelegateFlowLayout {

    var scrollViewDidScrollBlock: ((scrollView: UIScrollView) -> Void)?
    var collectionViewDidSelectItemBlock: ((itemIndexPath: NSIndexPath) -> Void)?

    var displayItems: [ACTChatsDisplayItem]?

    //MARK: - UICollectionViewDelegateFlowLayout

    func collectionView(collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, referenceSizeForHeaderInSection section: Int) -> CGSize {
        return CGSize(width: CGRectGetWidth(UIScreen.mainScreen().bounds), height: 0.0)
    }

    func collectionView(collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumLineSpacingForSectionAtIndex section: Int) -> CGFloat {
        return 0
    }

    func collectionView(collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumInteritemSpacingForSectionAtIndex section: Int) -> CGFloat {
        return 0
    }

    func collectionView(collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAtIndexPath indexPath: NSIndexPath) -> CGSize {
        if let items = self.displayItems {
            let nameHeight: CGFloat = 37
            let item = items[indexPath.row]
            let width = UIScreen.mainScreen().bounds.width - 24 - 12 - 60 - 12
            let textHeight = item.text.height(UIFont(name: "Helvetica Neue", size: 17)!, width: width) + 10
            var countHeight: CGFloat = 0.0
            if !item.newCount.isEmpty {
                countHeight = 10 + 21
            }

            let minHeight: CGFloat = 76

            let fullHeight = nameHeight + textHeight + countHeight
            if fullHeight < minHeight {
                return CGSizeMake(UIScreen.mainScreen().bounds.width, minHeight)
            } else {
                return CGSizeMake(UIScreen.mainScreen().bounds.width, fullHeight)
            }
        }
        return CGSizeMake(UIScreen.mainScreen().bounds.width, 0.1)
    }

    func collectionView(collectionView: UICollectionView, didSelectItemAtIndexPath indexPath: NSIndexPath) {
        if let collectionViewDidSelectItemBlock = self.collectionViewDidSelectItemBlock {
            collectionViewDidSelectItemBlock(itemIndexPath: indexPath)
        }
    }

    //MARK: - UIScrollViewDelegate

    func scrollViewDidScroll(scrollView: UIScrollView) {
        if let scrollViewDidScrollBlock = self.scrollViewDidScrollBlock {
            scrollViewDidScrollBlock(scrollView: scrollView)
        }
    }

}