//
// Created by Stas Syomin on 10.11.15.
// Copyright (c) 2015 FLOTU. All rights reserved.
//

import Foundation
import UIKit

extension UIColor {

    convenience init(red: Int, green: Int, blue: Int) {
        self.init(ired: red, igreen: green, iblue: blue, ialpha: 1)
    }

    convenience init(ired: Int, igreen: Int, iblue: Int, ialpha: CGFloat) {
        assert(ired >= 0 && ired <= 255, "Invalid red component")
        assert(igreen >= 0 && igreen <= 255, "Invalid green component")
        assert(iblue >= 0 && iblue <= 255, "Invalid blue component")
        assert(ialpha >= 0 && ialpha <= 1, "Invalid alpha component")

        self.init(red: CGFloat(ired) / 255.0, green: CGFloat(igreen) / 255.0, blue: CGFloat(iblue) / 255.0, alpha: ialpha)

    }

    convenience init(hex:Int) {
        self.init(red:(hex >> 16) & 0xff, green:(hex >> 8) & 0xff, blue:hex & 0xff)
    }

    convenience init(hex: Int, alpha: CGFloat) {
        self.init(ired:(hex >> 16) & 0xff, igreen:(hex >> 8) & 0xff, iblue:hex & 0xff, ialpha: alpha)
    }

}