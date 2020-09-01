//
//  PFCoinCollectionViewCell.swift
//  PuzzleFilterProduct
//
//  Created by diantu on 2020/9/1.
//  Copyright © 2020 diantus. All rights reserved.
//

import UIKit

class PFCoinCollectionViewCell: UICollectionViewCell {

    @IBOutlet weak var payMoneyBtn: UIButton!
    @IBOutlet weak var goldNumberLabel: UILabel!
    var clickPayBlock: (() -> (Void))?

    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
        self.layer.cornerRadius = 25
        self.layer.masksToBounds = true
        payMoneyBtn.layer.cornerRadius = payMoneyBtn.qmui_height/2
        payMoneyBtn.layer.masksToBounds = true
        payMoneyBtn.layer.borderWidth = 1
        payMoneyBtn.layer.borderColor = UIColor.white.cgColor
    }
    @IBAction func clickPay(_ sender: Any) {
        clickPayBlock?()
    }
    
}
