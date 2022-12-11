//
//  TabBarController.swift
//  ViewControllerLifeCycle
//
//  Created by Oleg Kalistratov on 11.12.22.
//

import Foundation


import UIKit

class TabBarController: UITabBarController {
    
    private let firstePage = FirstePage()
    private let secondPage = SecondPage()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        prepareTabBarItems()
    }
    
    private func prepareTabBarItems() {
        firstePage.tabBarItem = UITabBarItem(title: "Page 1",
                                             image: UIImage(named: "doc_person"),
                                             selectedImage: UIImage(named: "doc_person_fill"))
        secondPage.tabBarItem = UITabBarItem(title: "Page 2",
                                             image: UIImage(named: "doc_checkmark"),
                                             selectedImage: UIImage(named: "doc_checkmark_fill"))
        
        self.viewControllers = [
            firstePage, secondPage,
        ]
        
    }
    
}
