//
//  JPToast.swift
//  JigsawProduct
//
//  Created by diantu on 2020/8/26.
//  Copyright © 2020 diantu. All rights reserved.
//

import Foundation
import Toast_Swift
class JPToast: NSObject {
    open class func showToast(_ message: String, view: UIView? = nil) {
        if let inView = view {
            inView.makeToast(message)
        } else {
            if let keyWindow = UIApplication.shared.keyWindow {
                keyWindow.makeToast(message)
            }
        }
    }
    open class func showSuccess(_ message: String) {
        SVProgressHUD.showSuccess(withStatus: message)
        DispatchQueue.main.asyncAfter(deadline: DispatchTime.now() + 1.5) {
            SVProgressHUD.dismiss()
        }
    }
    open class func showLoading(_ message: String) {
        SVProgressHUD.show(withStatus: message)
    }
    open class func hidLoading() {
        SVProgressHUD.dismiss()
    }
}

