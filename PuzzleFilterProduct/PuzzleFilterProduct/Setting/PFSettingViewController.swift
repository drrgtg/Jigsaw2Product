//
//  PFSettingViewController.swift
//  PuzzleFilterProduct
//
//  Created by diantu on 2020/9/1.
//  Copyright © 2020 diantus. All rights reserved.
//

import UIKit

class PFSettingViewController: PFBaseViewController {
    private var cacheSize = "\(arc4random()%10).0M"

    @IBOutlet weak var tableView: UITableView!
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        title = "Setting"
        tableView.delegate = self
        tableView.dataSource = self
        tableView.register(UINib(nibName: "PFSettingTableViewCell", bundle: .main), forCellReuseIdentifier: "PFSettingTableViewCellID")
    }

}

extension PFSettingViewController: UITableViewDelegate, UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        5
    }
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "PFSettingTableViewCellID", for: indexPath) as! PFSettingTableViewCell
        switch indexPath.row {
        case 0:
            cell.leftImageView.image = UIImage(named: "icon_cv")
            cell.nameLabel.text = "Current Version"
            cell.rightLabel.text = PFCFBundleVersion()
        case 1:
            cell.leftImageView.image = UIImage(named: "icon_clear")
            cell.nameLabel.text = "Clear Cache"
            cell.rightLabel.text = cacheSize
        case 2:
            cell.leftImageView.image = UIImage(named: "icon_good")
            cell.nameLabel.text = "Give a good comment"
            cell.rightLabel.text = ""
        case 3:
            cell.leftImageView.image = UIImage(named: "icon_privacy")
            cell.nameLabel.text = "Privacy Policy"
            cell.rightLabel.text = ""
        case 4:
            cell.leftImageView.image = UIImage(named: "icon_rule")
            cell.nameLabel.text = "Terms of Service"
            cell.rightLabel.text = ""
        default:
            break
        }
        return cell
    }
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        tableView.deselectRow(at: indexPath, animated: true)
        switch indexPath.row {
        case 0:
            print("current Version")
        case 1:
            JPToast.showSuccess("clear successed")
            cacheSize = "0M"
            tableView.reloadData()
        case 2:
            let myAppId = ""
            let urlStr = "itms-apps://itunes.apple.com/WebObjects/MZStore.woa/wa/viewContentsUserReviews?type=Purple+Software&id=\(myAppId)&pageNumber=0&sortOrdering=2&mt=8"
            if let url = URL(string: urlStr){
                UIApplication.shared.openURL(url)
            }
        case 3:
            let vc = PFPrivacyViewController()
            navigationController?.pushViewController(vc, animated: true)
        case 4:
            let vc = PFTermServiceViewController()
            navigationController?.pushViewController(vc, animated: true)
        default:
            break
        }
    }
}
