//
//  BaseTabbarController.swift
//  NavController-TabbarController
//
//  Created by Vinh The on 7/17/16.
//  Copyright © 2016 Vinh The. All rights reserved.
//

import UIKit

class BaseTabbarController: UITabBarController, UITabBarControllerDelegate {
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Change the backgound color of bottom tabbar
        tabBar.barTintColor = UIColor.blackColor()
        tabBar.translucent = false
        
        UITabBarItem.appearance().setTitleTextAttributes([NSForegroundColorAttributeName : UIColor.whiteColor(), NSFontAttributeName : UIFont(name: "SFUIText-Regular", size: 12)!], forState: .Normal)

    }
    
    // Initial controllers
    override func viewWillAppear(animated: Bool) {
        super.viewWillAppear(animated)
        
        let bookVC = UIStoryboard.init(name: "Main", bundle: nil).instantiateViewControllerWithIdentifier("YourBookVC") as! YourBookController
        let homeVC = UIStoryboard.init(name: "Main", bundle: nil).instantiateViewControllerWithIdentifier("HomeVC") as! HomeViewController
        let profileVC = UIStoryboard.init(name: "Main", bundle: nil).instantiateViewControllerWithIdentifier("ProfileVC") as! ProfileViewController
        
        let bookNav = BaseNavigationController(rootViewController: bookVC)
        let homeNav = BaseNavigationController(rootViewController: homeVC)
        let profileNav = BaseNavigationController(rootViewController: profileVC)
        
        viewControllers = [bookNav, homeNav, profileNav]
        
        settingNavForEachController(bookVC, transparent: true, navTitle: "Linh Ka Team", tabbarTitle: "Long Hoang", image: "Book", selectedImage: "Selected-Book")
        
        settingNavForEachController(homeVC, transparent: true, navTitle: "Linh Ka Team", tabbarTitle: "Chii Be", image: "Home", selectedImage: "Selected-Home")
        
        settingNavForEachController(profileVC, transparent: true, navTitle: "Linh Ka Team", tabbarTitle: "Long Bii", image: "Profile", selectedImage: "Selected-Profile")
        
//        let topTitle = "Linh Ka Team"
//        
//        profileVC.title = topTitle
//        homeVC.title = topTitle
//        bookVC.title = topTitle
//        
//        bookNav.title = "Long Hoang"
//        homeNav.title = "Chii Be"
//        profileNav.title = "Long Bii"
    }
    
    // Change attributes of the bottom bar navigation
    func settingNavForEachController(viewcontroller : BaseViewController, transparent : Bool, navTitle : String, tabbarTitle : String, image : String, selectedImage : String) -> Void {
        
        viewcontroller.navigationItem.title = navTitle
        viewcontroller.tabBarItem = UITabBarItem(title: tabbarTitle, image: UIImage(named: image)?.imageWithRenderingMode(.AlwaysOriginal), selectedImage: UIImage(named: selectedImage)?.imageWithRenderingMode(.AlwaysOriginal))
        
        viewcontroller.transparent = transparent
        
    }
    
}
