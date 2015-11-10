//
// Created by Stas Syomin on 10.11.15.
// Copyright (c) 2015 FLOTU. All rights reserved.
//

import Foundation
import UIKit

extension UIImage {

    private class func getImageWithColor(color: UIColor, size: CGSize) -> UIImage {
        let rect = CGRectMake(0, 0, size.width, size.height)
        UIGraphicsBeginImageContextWithOptions(size, false, 0)
        color.setFill()
        UIRectFill(rect)
        let image: UIImage = UIGraphicsGetImageFromCurrentImageContext()
        UIGraphicsEndImageContext()
        return image
    }

    class func getImageForChatAvatar() -> UIImage {
        //let color = UIColor(red: 200, green: 200, blue: 200, alpha: 1)
        let color = UIColor(hex: 0xC8C8C8)
        let size = CGSizeMake(90, 90)
        return self.getImageWithColor(color, size: size)
    }

}