//
//  Constant.swift
//  PuzzleFilterProduct
//
//  Created by diantu on 2020/9/1.
//  Copyright © 2020 diantus. All rights reserved.
//

import Foundation

let ScreenWidth = UIScreen.main.bounds.size.width
let ScreenHeight = UIScreen.main.bounds.size.height

var iPhoneX: Bool {
    if #available(iOS 11.0, *) {
        return Int(UIApplication.shared.keyWindow?.safeAreaInsets.bottom ?? 0) > 0
    } else {
        // Fallback on earlier versions
        return false
    }
}
let JPBottomXMAXHeight:CGFloat = iPhoneX ? 34 : 0

let kIAPDefaultGoldNumber = "kIAPDefaultGoldNumber"

func PFCFBundleVersion() -> String {
    let dictionary = Bundle.main.infoDictionary!
    let version = dictionary["CFBundleShortVersionString"] as! String
    let build = dictionary["CFBundleVersion"] as! String
    return version
}
