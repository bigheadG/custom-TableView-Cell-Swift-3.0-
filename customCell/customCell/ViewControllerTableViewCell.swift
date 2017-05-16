//
//  ViewControllerTableViewCell.swift
//  customCell
//
//  Created by chenBighead on 2017/5/15.
//  Copyright © 2017年 joybien. All rights reserved.
//

import UIKit

class ViewControllerTableViewCell: UITableViewCell {
    @IBOutlet weak var myImage: UIImageView!
    @IBOutlet weak var myLabel: UILabel!

    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
