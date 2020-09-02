//
//  PFStickerBGView.swift
//  PuzzleFilterProduct
//
//  Created by diantu on 2020/9/2.
//  Copyright © 2020 diantus. All rights reserved.
//

import UIKit

class PFStickerBGView: UIView {
    
    var scrollView1: UIScrollView?
    var scrollView2: UIScrollView?
    var clickBGColorBlock: ((UIImage?) -> (Void))?

    override init(frame: CGRect) {
        super.init(frame: frame)
        setupViews()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    func setupViews() {
        // scroll1
        let scroll1 = UIScrollView(frame: .zero)
        self.addSubview(scroll1)
        scroll1.contentInset = UIEdgeInsets(top: 0, left: 15, bottom: 0, right: 15)
        scroll1.snp.makeConstraints { (make) in
            make.leading.trailing.equalToSuperview()
            make.top.equalToSuperview().offset(10)
            make.height.equalTo(40)
        }
        scrollView1 = scroll1
        // scroll2
        let scroll2 = UIScrollView(frame: .zero)
        self.addSubview(scroll2)
        scroll2.contentInset = UIEdgeInsets(top: 0, left: 15, bottom: 0, right: 15)
        scroll2.snp.makeConstraints { (make) in
            make.leading.trailing.equalToSuperview()
            make.top.equalTo(scroll1.snp.bottom).offset(10)
            make.height.equalTo(40)
        }
        scrollView2 = scroll2
        fillSubViews()
    }
    
    // fillSubViews
    func fillSubViews() {
        let model = PFStickerModel()
        for i in 0..<model.allSticker1.count {
            let image = model.allSticker1[i]
            let x = i * 50
            let tempView = PFColorItemView(frame: CGRect(x: x, y: 0, width: 40, height: 40))
            scrollView1?.addSubview(tempView)
            tempView.tag = 300 + i
            tempView.contentBtn.setBackgroundImage(image, for: .normal)
            tempView.clickBlock = {[weak self] (tag) in
                guard let sself = self else {
                    return
                }
                sself.clickSmContentBtn(tag, count: model.allSticker1.count)
                sself.clickBGColorBlock?(image)
            }
        }
        scrollView1?.contentSize = CGSize(width: model.allSticker1.count * 50, height: 40)
        // backgroundColor
        for i in 0..<model.allSticker2.count {
            let image = model.allSticker2[i]
            let x = i * 50  
            let tempView = PFColorItemView(frame: CGRect(x: x, y: 0, width: 40, height: 40))
            tempView.tag = 400 + i
            scrollView2?.addSubview(tempView)
            tempView.contentBtn.setBackgroundImage(image, for: .normal)
            tempView.clickBlock = {[weak self] (tag) in
                guard let sself = self else {
                    return
                }
                sself.clickBGContentBtn(tag, count: model.allSticker2.count)
                sself.clickBGColorBlock?(image)
            }
        }
        scrollView2?.contentSize = CGSize(width: model.allSticker2.count * 50, height: 40)
    }
    func clickSmContentBtn(_ tag: Int, count: Int) {
        for i in 0..<count {
            let btn = scrollView1?.viewWithTag(300 + i) as! PFColorItemView
            if tag == 300 + i {
                btn.isSelect = true
            } else {
                btn.isSelect = false
            }
        }
    }
    func clickBGContentBtn(_ tag: Int, count: Int) {
        for i in 0..<count{
            let btn = scrollView2?.viewWithTag(400 + i) as! PFColorItemView
            if tag == 400 + i {
                btn.isSelect = true
            } else {
                btn.isSelect = false
            }
        }
    }
    
}
