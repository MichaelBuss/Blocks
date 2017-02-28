//
//  EditorViewController.swift
//  Blocks
//
//  Created by Michael Buss Andersen on 23/02/2017.
//  Copyright © 2017 NoobLabs. All rights reserved.
//

import UIKit

class EditorViewController: UIViewController, UITabBarDelegate {

    @IBOutlet var viewOutlet: UIView!
    @IBOutlet weak var drawerLabel: UILabel!
    @IBOutlet weak var mostRecentItem: UITabBarItem!
    @IBOutlet weak var tabBar: UITabBar!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tabBar.selectedItem = tabBar.items?.first
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func tabBar(_ tabBar: UITabBar, didSelect item: UITabBarItem) {
        drawerLabel.text = item.title
//        switch item.tag {
//        case 0:
//            drawerLabel.text = "Most Resent"
//        case 1:
//            <#code#>
//        case 2:
//            <#code#>
//        case 3:
//            <#code#>
//        default: break
//        }
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
