//
//  ViewController.swift
//  PuzzleFilterProduct
//
//  Created by diantu on 2020/9/1.
//  Copyright © 2020 diantus. All rights reserved.
//

import UIKit
import TZImagePickerController


class PFViewController: QMUICommonViewController {

    @IBOutlet weak var faceImageView: UIImageView!
    @IBOutlet weak var startBtn: UIButton!
    @IBOutlet weak var goldBtn: UIButton!
    override func navigationBarBackgroundImage() -> UIImage? {
        UIImage.qmui_image(with: .clear)
    }
    override func navigationBarStyle() -> UIBarStyle {
        .blackOpaque
    }
    override func navigationBarBarTintColor() -> UIColor? {
        .clear
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
    }
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        if let goldNumber = UserDefaults.standard.string(forKey: kIAPDefaultGoldNumber) {
            goldBtn?.setTitle(goldNumber, for: .normal)
        }
    }
    override func viewDidLayoutSubviews() {
        super.viewDidLayoutSubviews()
        goldBtn.layer.cornerRadius = 25
        goldBtn.layer.qmui_maskedCorners = QMUICornerMask(rawValue: QMUICornerMask.layerMaxXMinYCorner.rawValue | QMUICornerMask.layerMinXMinYCorner.rawValue)
    }

    override func initSubviews() {
        super.initSubviews()
        // navigationitem
        // left
        let label = UILabel(frame: CGRect(x: 0, y: 0, width: 100, height: 24))
        label.text = "Avatar"
        label.font = UIFont.boldSystemFont(ofSize: 23)
        label.textColor = .white
        navigationItem.leftBarButtonItem = UIBarButtonItem(customView: label)
        // right
        let button = QMUIButton(type: .custom)
        button.setImage(UIImage(named: "icon_setting"), for: .normal)
        button.sizeToFit()
        navigationItem.rightBarButtonItem = UIBarButtonItem(customView: button)
        button.addTarget(self, action: #selector(clickSetting), for: .touchUpInside)
        
    }
    
    @IBAction func clickStart(_ sender: Any) {
        guard let imagePickerVC = TZImagePickerController(maxImagesCount: 1, delegate: self) else {
            return
        }
        imagePickerVC.didFinishPickingPhotosHandle = {[weak self] (photos, assets, isSelectOriginalPhoto) in
            // go to edit
            guard let image = photos?.first else {
                return
            }
            let vc = PFEditViewController()
            vc.image = image
            self?.navigationController?.pushViewController(vc, animated: true)
        }
        present(imagePickerVC, animated: true, completion: nil)
    }
    @IBAction func clickGold(_ sender: Any) {
        let vc = PFCoinListViewController()
        navigationController?.pushViewController(vc, animated: true)
    }
    @objc func clickSetting() {
        // setting
        let vc = PFSettingViewController()
        navigationController?.pushViewController(vc, animated: true)
    }
}

extension PFViewController: TZImagePickerControllerDelegate {
    
}
