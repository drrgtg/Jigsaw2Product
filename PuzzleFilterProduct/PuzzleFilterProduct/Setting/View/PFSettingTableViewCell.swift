//
//  PFSettingTableViewCell.swift
//  PuzzleFilterProduct
//
//  Created by diantu on 2020/9/1.
//  Copyright © 2020 diantus. All rights reserved.
//

import UIKit

class PFSettingTableViewCell: UITableViewCell {

    @IBOutlet weak var leftImageView: UIImageView!
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var rightLabel: UILabel!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
}
