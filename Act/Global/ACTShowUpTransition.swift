//
// Created by Stas Syomin on 10.11.15.
// Copyright (c) 2015 FLOTU. All rights reserved.
//

import Foundation
import STPTransitions
import UIKit

class ACTShowUpTransition: STPTransition {

    override public func animateFromView(fromView: UIView!, toView: UIView!, inContainerView containerView: UIView!,
                                         executeOnCompletion onCompletion: ((Bool) -> Void)!) {
        containerView.addSubview(toView)
        containerView.bringSubviewToFront(fromView)
        toView.transform = CGAffineTransformMakeScale(0.7, 0.7)
        UIView.animateWithDuration(0.5, delay: 0.0, options: UIViewAnimationOptions.CurveEaseInOut, animations: {
            toView.transform = CGAffineTransformMakeScale(1, 1)
            fromView.transform = CGAffineTransformMakeScale(2, 2)
            fromView.alpha = 0
        }, completion: {complete in
            fromView.transform = CGAffineTransformIdentity
            toView.transform = CGAffineTransformIdentity
            onCompletion(complete)
        })
    }
    
}
