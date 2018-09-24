//
//  BaseViewController.swift
//  NavController-TabbarController
//
//  Created by Vinh The on 7/16/16.
//  Copyright © 2016 Vinh The. All rights reserved.
//

import UIKit

class BaseViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view.
    }
    
    var transparent : Bool? {
        didSet {
            if transparent == true {
                setTransparentForUINavigationBar()
            }
        }
    }
    
    var backTitle : String? {
        didSet {
            guard let title = backTitle else { return }
            
            setTitleForBackButton(title)
    
        }
    }
    
    // Make the top navigation in the sign in form unseen.
    func setTransparentForUINavigationBar() -> Void {
        
        // Set the background of the navigation to empty in the sign-in form.
        navigationController?.navigationBar.setBackgroundImage(UIImage(), forBarMetrics: .Default)
        
        // Set the bottom line of the navigation to unseen.
        navigationController?.navigationBar.shadowImage = UIImage()
        
    }
    
    // Make the back button unseen.
    func setTitleForBackButton(title : String) -> Void {
        
        let backButton = UIBarButtonItem()
        
        backButton.title = title
        
        navigationItem.backBarButtonItem = backButton
        
    }
    
    
    // MARK: Update Contraints
    
    func updateContraint(contraint : NSLayoutConstraint!){
        print(contraint.constant)
        
        let scale = UIScreen.mainScreen().bounds.size.height / 667
        
        contraint.constant = contraint.constant * scale
        
        print(contraint.constant)
    }
    
}
