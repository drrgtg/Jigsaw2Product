//
//  PFColorItemView.swift
//  PuzzleFilterProduct
//
//  Created by diantu on 2020/9/2.
//  Copyright © 2020 diantus. All rights reserved.
//

import UIKit

class PFColorItemView: UIView {
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
        self.layer.cornerRadius = 3
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
        
    }
    
    @objc func clickMe() {
        clickBlock?(self.tag)
    }
}
