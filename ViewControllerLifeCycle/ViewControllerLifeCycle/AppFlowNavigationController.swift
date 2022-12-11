//
//  AppFlowNavigationController.swift
//  ViewControllerLifeCycle
//
//  Created by Oleg Kalistratov on 11.12.22.
//

import UIKit

class AppFlowNavigationController: UINavigationController {
    
    init() {
        super.init(nibName: nil, bundle: nil)
        mainFlowSetup()
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    private func mainFlowSetup() {
        let tabBar = TabBarController()
        self.setViewControllers([tabBar], animated: true)
    }
    
}
