//
//  PFFilterItemView.swift
//  PuzzleFilterProduct
//
//  Created by diantu on 2020/9/2.
//  Copyright © 2020 diantus. All rights reserved.
//

import UIKit

class PFFilterItemView: UIView {
    var nameLabel: UILabel?
    var contentImageV: UIImageView?
    var clickBlock: ((Int)->(Void))?
    private var selView: UIView?
    private var _isSelect: Bool = false
    var isSelect: Bool {
        set {
            _isSelect = newValue
            if newValue {
                selView?.isHidden = false
            } else {
                selView?.isHidden = true
            }
        }
        get {
            return _isSelect
        }
    }
    lazy var contentBtn: QMUIButton = {
        let button = QMUIButton(type: .custom)
        return button
    }()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        setupSubView()
        self.layer.cornerRadius = 6
        self.layer.masksToBounds = true
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

    func setupSubView() {
        addSubview(contentBtn)
        contentBtn.snp.makeConstraints { (make) in
            make.edges.equalToSuperview()
        }
        contentBtn.addTarget(self, action: #selector(clickMe), for: .touchUpInside)
        // imageV
        let imageV = UIImageView()
        self.addSubview(imageV)
        imageV.contentMode = .scaleAspectFill
        imageV.snp.makeConstraints { (make) in
            make.edges.equalToSuperview()
        }
        contentImageV = imageV
        let selV = UIView()
        self.addSubview(selV)
        selV.snp.makeConstraints { (make) in
            make.edges.equalToSuperview()
        }
        selV.backgroundColor = .clear
        selV.layer.borderColor = UIColor.white.cgColor
        selV.layer.borderWidth = 2
        selV.isHidden = true
        selView = selV
        // nameLabel
        let label = UILabel()
        self.addSubview(label)
        label.snp.makeConstraints { (make) in
            make.bottom.leading.trailing.equalToSuperview()
            make.height.equalTo(17)
        }
        label.backgroundColor = .black
        label.font = UIFont.systemFont(ofSize: 8, weight: .medium)
        label.textColor = .white
        label.textAlignment = .center
        nameLabel = label
        
    }
    
    @objc func clickMe() {
        clickBlock?(self.tag)
    }
}
