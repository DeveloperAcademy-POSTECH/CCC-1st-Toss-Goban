//
//  TabBarViewController.swift
//  TossCloneApp
//
//  Created by Lee Myeonghwan on 2022/07/01.
//

import UIKit
import SwiftUI

class TabBarViewController: UITabBarController {
    private var homeViewController: UINavigationController = {
        let viewController = HomeViewController()
             let tabBarItem = UITabBarItem(title: "홈", image: UIImage(systemName: "house.fill"), tag: 0)
             viewController.tabBarItem = tabBarItem
             let navigationView = UINavigationController(rootViewController: viewController)
             return navigationView
    }()
    private var benefitViewController: UIViewController = {
        let viewController = UIViewController()
        let tabBarItem = UITabBarItem(title: "혜택", image: UIImage(systemName: "diamond.fill"), tag: 1)
        viewController.tabBarItem = tabBarItem
        let navigationView = UINavigationController(rootViewController: viewController)
        return navigationView
    }()
    private var sendMondeyViewController: UIViewController = {
        let viewController = UIViewController()
        let tabBarItem = UITabBarItem(title: "송금", image: UIImage(systemName: "dollarsign.circle.fill"), tag: 2)
        viewController.tabBarItem = tabBarItem
        let navigationView = UINavigationController(rootViewController: viewController)
        return navigationView
    }()
    private var stockViewController: UIViewController = {
        let viewController = UIViewController()
        let tabBarItem = UITabBarItem(title: "주식", image: UIImage(systemName: "chart.bar.fill"), tag: 3)
        viewController.tabBarItem = tabBarItem
        let navigationView = UINavigationController(rootViewController: viewController)
        return navigationView
    }()
    private var allViewController: UIViewController = {
        let viewController = UIViewController()
        let tabBarItem = UITabBarItem(title: "전체", image: UIImage(systemName: "line.3.horizontal"), tag: 4)
        viewController.tabBarItem = tabBarItem
        let navigationView = UINavigationController(rootViewController: viewController)
        return navigationView
    }()
    override func viewDidLoad() {
        super.viewDidLoad()
        viewControllers = [homeViewController, benefitViewController, sendMondeyViewController, stockViewController, allViewController]
        self.configureTabBar()
    }
}

extension TabBarViewController {
     func configureTabBar() {
         self.tabBar.tintColor = .label
         self.tabBar.layer.cornerRadius = 20
         self.tabBar.layer.masksToBounds = true
         self.tabBar.layer.backgroundColor = UIColor.systemBackground.cgColor
         self.tabBar.layer.borderColor = UIColor.lightGray.cgColor
         self.tabBar.layer.borderWidth = 0.4
     }
 }

struct TabBarViewControllerPreView: PreviewProvider {
    static var previews: some View {
        TabBarViewController().toPreview()
    }
}
