//
//  PFBorderBGView.swift
//  PuzzleFilterProduct
//
//  Created by diantu on 2020/9/2.
//  Copyright © 2020 diantus. All rights reserved.
//

import UIKit

class PFBorderBGView: UIView {
    
    var slider1: QMUISlider?
    var label1: UILabel?
    var slideFilletBlock: ((Float)->(Void))?
    var colorSelBlock: ((UIColor)->(Void))?
    var scrollView1: UIScrollView?
    override init(frame: CGRect) {
        super.init(frame: frame)
        setupSubView()
    }
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    func setupSubView() {
        let leftIcon = UIImageView(image: UIImage(named: "icon_menu_width"))
        addSubview(leftIcon)
        leftIcon.snp.makeConstraints { (make) in
            make.leading.equalToSuperview().offset(18)
            make.top.equalToSuperview().offset(20)
        }
        let filletLabel = UILabel()
        filletLabel.textColor = .white
        filletLabel.text = "Width"
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
        
        // scroll1
        let scroll1 = UIScrollView()
        self.addSubview(scroll1)
        scroll1.snp.makeConstraints { (make) in
            make.leading.equalToSuperview()
            make.trailing.equalToSuperview()
            make.top.equalTo(filletLabel.snp.bottom).offset(10)
            make.height.equalTo(35)
        }
        scrollView1 = scroll1
        setupDataUI()
    }
    func setupDataUI(){
        // 123456
        let model = PFColorsModel()
        for i in 0..<model.allColors.count {
            let x = i * 45
            let tempView = PFColorItemView(frame: CGRect(x: CGFloat(x), y: 0, width: 35, height: 35))
            scrollView1?.addSubview(tempView)
            let color = model.allColors[i]
            tempView.backgroundColor = color
            tempView.tag = 100 + i
            tempView.clickBlock = {[weak self] (tag) in
                guard let sself = self, let color = model.allColors[tag - 100] else {
                    return
                }
                sself.clickSmContentBtn(tag, count: model.allColors.count)
                sself.colorSelBlock?(color)
            }
        }
        scrollView1?.contentSize = CGSize(width: CGFloat(model.allColors.count * 45), height: 35)
        scrollView1?.contentInset = UIEdgeInsets(top: 0, left: 15, bottom: 0, right: 15)
    }
    @objc func slider1ValueChanged(_ slider: QMUISlider) {
        slideFilletBlock?(slider.value)
        label1?.text = "\(Int(slider.value * 100))%"
    }
    func clickSmContentBtn(_ tag: Int, count: Int) {
        for i in 0..<count {
            let btn = scrollView1?.viewWithTag(100 + i) as! PFColorItemView
            if tag == 100 + i {
                btn.isSelect = true
            } else {
                btn.isSelect = false
            }
        }
    }
}
