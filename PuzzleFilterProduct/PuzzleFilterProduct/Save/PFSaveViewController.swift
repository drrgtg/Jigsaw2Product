//
//  PFSaveViewController.swift
//  PuzzleFilterProduct
//
//  Created by diantu on 2020/9/2.
//  Copyright © 2020 diantus. All rights reserved.
//

import UIKit

class PFSaveViewController: PFBaseViewController {

    @IBOutlet weak var contentImageView: UIImageView!
    var image: UIImage?
    
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
        title = "Share"
        contentImageView.image = image
    }
    @IBAction func backHome(_ sender: Any) {
    }
    @IBAction func share(_ sender: Any) {
        //初始化一个UIActivity
        guard let sImage = image else {
            return
        }
        let activityItems = NSMutableArray(array: [sImage])
        //初始化UIActivityViewController
        let activityController = UIActivityViewController(activityItems: activityItems as! [Any], applicationActivities: nil)
        //iphone中为模式跳转
        present(activityController, animated: true, completion: nil)

    }
}
