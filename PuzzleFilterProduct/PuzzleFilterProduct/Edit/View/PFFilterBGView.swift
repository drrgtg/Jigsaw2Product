//
//  PFFilterBGView.swift
//  PuzzleFilterProduct
//
//  Created by diantu on 2020/9/2.
//  Copyright © 2020 diantus. All rights reserved.
//

import UIKit

class PFFilterBGView: UIView {

    var colorSelBlock: ((UIImage)->(Void))?
    var scrollView1: UIScrollView?
    var tempModel: PFFilterModel?
    var filterImages: [UIImage] = []
    override init(frame: CGRect) {
        super.init(frame: frame)
        setupSubView()
    }
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    func setupSubView() {
        // scroll1
        let scroll1 = UIScrollView()
        self.addSubview(scroll1)
        scroll1.snp.makeConstraints { (make) in
            make.leading.equalToSuperview()
            make.trailing.equalToSuperview()
            make.centerY.equalToSuperview().offset(-10)
            make.height.equalTo(80)
        }
        scroll1.contentInset = UIEdgeInsets(top: 0, left: 15, bottom: 0, right: 15)
        scrollView1 = scroll1
        setupDataUI()
    }
    func setupDataUI(){
        // 123456
        let model = PFFilterModel()
        tempModel = model
        for i in 0..<model.filterNames.count {
            let x = i * 80
            let tempView = PFFilterItemView(frame: CGRect(x: CGFloat(x), y: 0, width: 64, height: 80))
            scrollView1?.addSubview(tempView)
            tempView.tag = 500 + i
            tempView.nameLabel?.text = model.filterNames[i]
            tempView.clickBlock = {[weak self] (tag) in
                guard let sself = self else {
                    return
                }
                sself.clickSmContentBtn(tag, count: model.filterNames.count)
                sself.colorSelBlock?(sself.filterImages[tag - 500])
            }
        }
        scrollView1?.contentSize = CGSize(width: CGFloat(model.filterNames.count * 80), height: 80)
    }
    func fillImage(_ image: UIImage) {
        filterImages.append(image)
        filterImage(image)
    }
    func clickSmContentBtn(_ tag: Int, count: Int) {
        for i in 0..<count {
            let btn = scrollView1?.viewWithTag(500 + i) as! PFFilterItemView
            if tag == 500 + i {
                btn.isSelect = true
            } else {
                btn.isSelect = false
            }
        }
    }
    func filterImage(_ image: UIImage) {
        DispatchQueue.global().async {
            for i in 1..<(self.tempModel?.filterNames.count ?? 0) {
                guard let filterName = self.tempModel?.filterNames[i], let ciImage = CIImage(image: image),let filter = CIFilter(name: filterName, parameters: [kCIInputImageKey: ciImage]) else {
                    return
                }
                let context = CIContext()
                if let outputImage = filter.outputImage , let cgImage = context.createCGImage(outputImage, from: outputImage.extent){
                    let oImage = UIImage(cgImage: cgImage)
                    self.filterImages.append(oImage)
                }
            }
            DispatchQueue.main.async {
                for i in 0..<(self.filterImages.count) {
                    let btn = self.scrollView1?.viewWithTag(500 + i) as! PFFilterItemView
                    btn.contentImageV?.image = self.filterImages[i]
                }
            }
        }
    }
}
