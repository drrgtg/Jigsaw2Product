//
//  PFEditViewController.swift
//  PuzzleFilterProduct
//
//  Created by diantu on 2020/9/2.
//  Copyright © 2020 diantus. All rights reserved.
//

import UIKit
import SnapKit

class PFEditViewController: PFBaseViewController {

    var image: UIImage?
    let bgImageView = UIImageView()
    let contentImageView = UIImageView()
    @IBOutlet weak var imageContainer: UIView!
    @IBOutlet weak var bottomBGView: UIView!
    @IBOutlet weak var toolsBGView: UIView!
    @IBOutlet weak var btn1: QMUIButton!
    @IBOutlet weak var btn2: QMUIButton!
    @IBOutlet weak var btn3: QMUIButton!
    @IBOutlet weak var btn4: QMUIButton!
    @IBOutlet weak var btn5: QMUIButton!
    // 圆角
    var btn1BGV: PFCircleBGView?
    // border
    var btn2BGV: PFBorderBGView?
    // backgroundImage
    var btn3BGV: PFBackgroundBGView?
    // stickerView
    var btn4BGV: PFStickerBGView?
    // Filter
    var btn5BGV: PFFilterBGView?
    
    var selectSticker: StickerView?
    var simage: UIImage?
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        title = "Edit"
        setupBtn()
        imageContainer.addSubview(bgImageView)
        bgImageView.snp.makeConstraints { (make) in
            make.edges.equalToSuperview()
        }
        imageContainer.contentMode = .scaleAspectFill
        imageContainer.addSubview(contentImageView)
        contentImageView.snp.makeConstraints { (make) in
            make.center.equalToSuperview()
            make.leading.equalToSuperview().offset(15)
            make.top.equalToSuperview().offset(15)
        }
        contentImageView.contentMode = .scaleAspectFill
        contentImageView.layer.masksToBounds = true
        contentImageView.image = image
        if let iconShare =  UIImage(named: "icon_menu_save"){
            let saveBtn = QMUIButton(type: .custom)
            saveBtn.setBackgroundImage(iconShare, for: .normal)
            saveBtn.addTarget(self, action: #selector(saveClicked), for: .touchUpInside)
            saveBtn.frame = CGRect(x: 0, y: 0, width: 64, height: 24)
            navigationItem.rightBarButtonItem = UIBarButtonItem(customView: saveBtn)
        }
        btn1ModeChanged()
        btn2ModeChanged()
        btn3ModeChanged()
        btn4ModeChanged()
        btn5ModeChanged()
    }
    func setupBtn() {
        btn1.setTitle("Frame", for: .normal)
        btn2.setTitle("Border color", for: .normal)
        btn3.setTitle("Background", for: .normal)
        btn4.setTitle("Stickers", for: .normal)
        btn5.setTitle("Filter", for: .normal)
        
        btn1.setTitleColor(UIColor.qmui_color(withHexString: "#C5C6C8"), for: .normal)
        btn2.setTitleColor(UIColor.qmui_color(withHexString: "#C5C6C8"), for: .normal)
        btn3.setTitleColor(UIColor.qmui_color(withHexString: "#C5C6C8"), for: .normal)
        btn4.setTitleColor(UIColor.qmui_color(withHexString: "#C5C6C8"), for: .normal)
        btn5.setTitleColor(UIColor.qmui_color(withHexString: "#C5C6C8"), for: .normal)
        btn1.setTitleColor(UIColor.qmui_color(withHexString: "#FB4A74"), for: .selected)
        btn2.setTitleColor(UIColor.qmui_color(withHexString: "#FB4A74"), for: .selected)
        btn3.setTitleColor(UIColor.qmui_color(withHexString: "#FB4A74"), for: .selected)
        btn4.setTitleColor(UIColor.qmui_color(withHexString: "#FB4A74"), for: .selected)
        btn5.setTitleColor(UIColor.qmui_color(withHexString: "#FB4A74"), for: .selected)
        
        btn1.setImage(UIImage(named: "btn1_normal"), for: .normal)
        btn2.setImage(UIImage(named: "btn2_normal"), for: .normal)
        btn3.setImage(UIImage(named: "btn3_normal"), for: .normal)
        btn4.setImage(UIImage(named: "btn4_normal"), for: .normal)
        btn5.setImage(UIImage(named: "btn5_normal"), for: .normal)
        
        btn1.setImage(UIImage(named: "btn1"), for: .selected)
        btn2.setImage(UIImage(named: "btn2"), for: .selected)
        btn3.setImage(UIImage(named: "btn3"), for: .selected)
        btn4.setImage(UIImage(named: "btn4"), for: .selected)
        btn5.setImage(UIImage(named: "btn5"), for: .selected)
        
        btn1.imagePosition = .top
        btn2.imagePosition = .top
        btn3.imagePosition = .top
        btn4.imagePosition = .top
        btn5.imagePosition = .top
        btn1.spacingBetweenImageAndTitle = 10
        btn2.spacingBetweenImageAndTitle = 10
        btn3.spacingBetweenImageAndTitle = 10
        btn4.spacingBetweenImageAndTitle = 10
        btn5.spacingBetweenImageAndTitle = 10
        clickBtn1(btn1 as Any)
    }
    override func viewDidLayoutSubviews() {
        super.viewDidLayoutSubviews()
        bottomBGView.layer.cornerRadius = 25
        bottomBGView.layer.qmui_maskedCorners = QMUICornerMask(rawValue: QMUICornerMask.layerMaxXMinYCorner.rawValue | QMUICornerMask.layerMinXMinYCorner.rawValue)
    }
    override func initSubviews() {
        super.initSubviews()
        // c
        let frame = CGRect(x: 0, y: 25, width: ScreenWidth, height: 120)
        let v1 = PFCircleBGView(frame: frame)
        toolsBGView.addSubview(v1)
        v1.backgroundColor = bottomBGView.backgroundColor
        btn1BGV = v1
        v1.isHidden = true
        // 2
        let v2 = PFBorderBGView(frame: frame)
        toolsBGView.addSubview(v2)
        v2.backgroundColor = bottomBGView.backgroundColor
        btn2BGV = v2
        v2.isHidden = true
        // 3
        let v3 = PFBackgroundBGView(frame: frame)
        toolsBGView.addSubview(v3)
        v3.backgroundColor = bottomBGView.backgroundColor
        btn3BGV = v3
        v3.isHidden = true
        // 4
        let v4 = PFStickerBGView(frame: frame)
        toolsBGView.addSubview(v4)
        v4.backgroundColor = bottomBGView.backgroundColor
        btn4BGV = v4
        v4.isHidden = true
        // 5
        let v5 = PFFilterBGView(frame: frame)
        toolsBGView.addSubview(v5)
        v5.backgroundColor = bottomBGView.backgroundColor
        btn5BGV = v5
        v5.fillImage(image!)
        v5.isHidden = true
    }
    func btn1ModeChanged() {
        btn1BGV?.slideFilletBlock = {[weak self] (progress) in
            guard let imageV = self?.contentImageView else {
                return
            }
            imageV.layer.cornerRadius = CGFloat(progress * 0.5) * imageV.qmui_height
            imageV.layer.masksToBounds = true
        }
    }
    func btn2ModeChanged() {
        btn2BGV?.slideFilletBlock = {[weak self] (progress) in
            guard let imageV = self?.contentImageView else {
                return
            }
            imageV.layer.borderWidth = CGFloat(progress) * imageV.qmui_width * 0.5
        }
        btn2BGV?.colorSelBlock = {[weak self] (color) in
            guard let imageV = self?.contentImageView else {
                return
            }
            imageV.layer.borderColor = color.cgColor
        }
    }
    func btn3ModeChanged() {
        btn3BGV?.slideFilletBlock = {[weak self] (progress) in
            guard let imageV = self?.bgImageView else {
                return
            }
            imageV.alpha = CGFloat(1 - progress)
        }
        btn3BGV?.colorSelBlock = {[weak self] (image) in
            guard let imageV = self?.bgImageView else {
                return
            }
            imageV.image = image
        }
    }
    func btn4ModeChanged() {
        btn4BGV?.clickBGColorBlock = { [weak self] (stickerImage) in
            guard let sself = self, let image = stickerImage else {
                return
            }
            sself.addStickerView(image)
        }
    }
    func btn5ModeChanged() {
        btn5BGV?.colorSelBlock = {[weak self] (image) in
            guard let sself = self else {
                return
            }
            sself.contentImageView.image = image
        }
    }
    func addStickerView(_ image: UIImage) {

        let stickerView = StickerView(contentFrame: CGRect(x: 0, y: 0, width: image.size.width, height: image.size.height), contentImage: image)
        stickerView?.enabledControl = false
        stickerView?.enabledBorder = false
        stickerView?.delegate = self as StickerViewDelegate
        stickerView?.performTapOperation()
        imageContainer.addSubview(stickerView!)
        stickerView?.center = imageContainer.center
        selectSticker = stickerView
    }
    @IBAction func clickBtn1(_ sender: Any) {
        btn1.isSelected = true
        btn1BGV?.isHidden = false
        if let tv = btn1BGV {
            toolsBGView.bringSubviewToFront(tv)
        }
        btn2.isSelected = false
        btn3.isSelected = false
        btn4.isSelected = false
        btn5.isSelected = false
    }
    @IBAction func clickBtn2(_ sender: Any) {
        btn1.isSelected = false
        btn2BGV?.isHidden = false
        if let tv = btn2BGV {
            toolsBGView.bringSubviewToFront(tv)
        }
        btn2.isSelected = true
        btn3.isSelected = false
        btn4.isSelected = false
        btn5.isSelected = false
    }
    @IBAction func clickBtn3(_ sender: Any) {
        btn1.isSelected = false
        btn3BGV?.isHidden = false
        if let tv = btn3BGV {
            toolsBGView.bringSubviewToFront(tv)
        }
        btn2.isSelected = false
        btn3.isSelected = true
        btn4.isSelected = false
        btn5.isSelected = false
    }
    @IBAction func clickBtn4(_ sender: Any) {
        btn1.isSelected = false
        btn4BGV?.isHidden = false
        if let tv = btn4BGV {
            toolsBGView.bringSubviewToFront(tv)
        }
        btn2.isSelected = false
        btn3.isSelected = false
        btn4.isSelected = true
        btn5.isSelected = false
    }
    @IBAction func clickBtn5(_ sender: Any) {
        btn1.isSelected = false
        btn5BGV?.isHidden = false
        if let tv = btn5BGV {
            toolsBGView.bringSubviewToFront(tv)
        }
        btn2.isSelected = false
        btn3.isSelected = false
        btn4.isSelected = false
        btn5.isSelected = true
    }
    @objc func saveClicked() {
        // use coin to save
        let alert = QMUIAlertController(title: "Save Image", message: "Speed 3000 gold coins to save image", preferredStyle: .alert)
        alert.addAction(QMUIAlertAction(title: "determine", style: .default, handler: { (_, _) in
            print("determine")
            self.payAndSave()
        }))
        alert.addCancelAction()
        alert.showWith(animated: true)
    }
    func payAndSave() {
        if let goldNumber = UserDefaults.standard.string(forKey: kIAPDefaultGoldNumber) {
            if Int(goldNumber) ?? 0 < 3000 {
                let vc = PFCoinListViewController()
                navigationController?.pushViewController(vc, animated: true)
            } else {
                JPToast.showLoading("Saving")
                UserDefaults.standard.setValue("\(Int(goldNumber)! - 3000)", forKey: kIAPDefaultGoldNumber)
                simage = saveImage()
                if let saveImage = simage {
                    UIImageWriteToSavedPhotosAlbum(saveImage, self, #selector(imageSaveFinished(image:error:context:)), nil)
                }
            }
        }
    }
    @objc func imageSaveFinished(image: UIImage, error: Error, context: UnsafeRawPointer) {
        JPToast.hidLoading()
        let vc = PFSaveViewController()
        vc.image = simage
        navigationController?.pushViewController(vc, animated: true)
    }
    func saveImage() -> UIImage? {
        UIGraphicsBeginImageContextWithOptions(imageContainer.frame.size,true, 0.0);
        guard let context = UIGraphicsGetCurrentContext() else {
            return nil
        }
        imageContainer.layer.render(in: context)
        let snapShotImage = UIGraphicsGetImageFromCurrentImageContext()
        UIGraphicsEndImageContext()
        return snapShotImage
    }
    
}

extension PFEditViewController: StickerViewDelegate {

    func stickerViewDidTapContentView(_ stickerView: StickerView!) {
        if let sticker = selectSticker {
            sticker.enabledControl = false
            sticker.enabledBorder = false
        } else {
            selectSticker = stickerView
            selectSticker?.enabledBorder = true
            selectSticker?.enabledControl = true
        }
    }
    func stickerViewDidTapDeleteControl(_ stickerView: StickerView!) {
        for subView in imageContainer.subviews {
            if let sv = subView as? StickerView {
                sv.performTapOperation()
                break
            }
        }
    }
}
