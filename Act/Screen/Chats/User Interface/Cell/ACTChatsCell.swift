//
// Created by Stas Syomin on 09.11.15.
// Copyright (c) 2015 FLOTU. All rights reserved.
//

import UIKit

class ACTChatsCell: UICollectionViewCell {

    static let reuseIdentifier = "ACTChatsCell"
    @IBOutlet var picImageView: UIImageView!
    @IBOutlet var userNameLabel: UILabel!
    @IBOutlet var dateLabel: UILabel!
    @IBOutlet var textLabel: UILabel!
    @IBOutlet var newMessagesLabel: UILabel!

    override func awakeFromNib() {
        super.awakeFromNib()

        self.picImageView.layer.masksToBounds = false
        self.picImageView.layer.borderColor = UIColor.blackColor().CGColor
        self.picImageView.layer.cornerRadius = self.picImageView.frame.height / 2
        self.picImageView.clipsToBounds = true
    }

}
