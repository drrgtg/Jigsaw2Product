//
//  PFCircleBGView.swift
//  PuzzleFilterProduct
//
//  Created by diantu on 2020/9/2.
//  Copyright © 2020 diantus. All rights reserved.
//

import UIKit

class PFCircleBGView: UIView {
    
    
    var slider1: QMUISlider?
    var label1: UILabel?
    var slideFilletBlock: ((Float)->(Void))?
    override init(frame: CGRect) {
        super.init(frame: frame)
        setupSubView()
    }
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    func setupSubView() {
        let leftIcon = UIImageView(image: UIImage(named: "icon_menu_circle"))
        addSubview(leftIcon)
        leftIcon.snp.makeConstraints { (make) in
            make.leading.equalToSuperview().offset(18)
            make.centerY.equalToSuperview().offset(-10)
        }
        let filletLabel = UILabel()
        filletLabel.textColor = .white
        filletLabel.text = "Fillet"
        filletLabel.font = UIFont.systemFont(ofSize: 10, weight: .medium)
        addSubview(filletLabel)
        filletLabel.snp.makeConstraints { (make) in
            make.centerX.equalTo(leftIcon.snp.centerX)
            make.top.equalTo(leftIcon.snp.bottom).offset(10)
        }
        filletLabel.sizeToFit()
        // slider
        let slider = QMUISlider()
        addSubview(slider)
        slider.snp.makeConstraints { (make) in
            make.centerY.equalTo(leftIcon.snp.centerY)
            make.leading.equalTo(leftIcon.snp.trailing).offset(18)
            make.trailing.equalToSuperview().offset(-25)
        }
        slider.minimumTrackTintColor = UIColor.qmui_color(withHexString: "#FFC833")
        slider.maximumTrackTintColor = .white
        slider.setThumbImage(UIImage(named: "icon_menu_button"), for: .normal)
        slider.addTarget(self, action: #selector(slider1ValueChanged(_:)), for: .valueChanged)
        slider1 = slider
        // progress
        let progressLabel = UILabel()
        progressLabel.textColor = .white
        progressLabel.text = "0%"
        progressLabel.font = UIFont.systemFont(ofSize: 10, weight: .medium)
        addSubview(progressLabel)
        progressLabel.snp.makeConstraints { (make) in
            make.centerX.equalTo(slider.snp.trailing)
            make.top.equalTo(slider.snp.bottom).offset(10)
        }
        progressLabel.sizeToFit()
        label1 = progressLabel
    }
    @objc func slider1ValueChanged(_ slider: QMUISlider) {
        slideFilletBlock?(slider.value)
        label1?.text = "\(Int(slider.value * 100))%"
    }
}
