//
//  CustomTabController.swift
//  PipelineDemo
//
//  Created by Prasad Prabhu on 11/05/20.
//  Copyright © 2020 Prasad Prabhu. All rights reserved.
//

import UIKit

class CustomTabController: UITabBarController {

    override func viewDidLoad() {
        super.viewDidLoad()
//        if #available(iOS 13, *) {
//            let apperance = UITabBarItemAppearance()
//            apperance.normal.titleTextAttributes =  [NSAttributedString.Key.foregroundColor: UIColor.green]
//             apperance.selected.titleTextAttributes =  [NSAttributedString.Key.foregroundColor: UIColor.green]
//            tabBarItem.standardAppearance = apperance
////          let appearance = UITabBarAppearance()
////        appearance.stackedLayoutAppearance.normal.titleTextAttributes = [NSAttributedString.Key.foregroundColor: UIColor.green]
////        appearance.stackedLayoutAppearance.selected.titleTextAttributes = [NSAttributedString.Key.foregroundColor: UIColor.red]
////        tabBar.standardAppearance = appearance
//        }
//        else{
        
        UITabBar.appearance().unselectedItemTintColor = UIColor.green
             UITabBarItem.appearance().setTitleTextAttributes([NSAttributedString.Key.foregroundColor: UIColor.red], for: .selected)
            UITabBarItem.appearance().setTitleTextAttributes([NSAttributedString.Key.foregroundColor: UIColor.green], for: .normal)
                   
//        }
//
        // Do any additional setup after loading the view.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
