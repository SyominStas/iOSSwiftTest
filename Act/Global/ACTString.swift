//
// Created by Stas Syomin on 09.11.15.
// Copyright (c) 2015 FLOTU. All rights reserved.
//

import Foundation
import UIKit

extension String {

    func height(font: UIFont, width: CGFloat) -> CGFloat {
        let label:UILabel = UILabel(frame: CGRectMake(0, 0, width, CGFloat.max))
        label.numberOfLines = 0
        label.lineBreakMode = NSLineBreakMode.ByWordWrapping
        label.font = font
        label.text = self
        label.sizeToFit()
        return label.frame.height
    }

}