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
        let tabBarItem = UITabBarItem(title: "홈", image: UIImage(systemName: "house.fill"), tag: 1)
        viewController.tabBarItem = tabBarItem
        let navigationView = UINavigationController(rootViewController: viewController)
        return navigationView
    }()
    private var benefitViewController: UINavigationController = {
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

// 함수화 하는게 잘 안됌. 뭐때문인지 연구가 필요함
// extension TabBarViewController {
//    private func makeTabbarUIViewController(title: String) -> UINavigationController {
//        let viewController: UIViewController
//        var uiImageSystemName = ""
//        var tabbarTag = 0
//        switch title {
//        case "홈":
//        viewController = HomeViewController()
//        uiImageSystemName = "hose.fill"
//        tabbarTag = 0
//        case "혜택":
//        viewController = UIViewController()
//        uiImageSystemName = "diamond.fill"
//        tabbarTag = 1
//        case "송금":
//        viewController = UIViewController()
//        uiImageSystemName = "dollarsign.circle.fill"
//        tabbarTag = 2
//        case "주식":
//        viewController = UIViewController()
//        uiImageSystemName = "chart.bar.fill"
//        tabbarTag = 3
//        case "전체":
//        viewController = UIViewController()
//        uiImageSystemName = "line.3.horizontal"
//        tabbarTag = 4
//        default:
//            viewController = UIViewController()
//            uiImageSystemName = "hose.fill"
//            tabbarTag = 0
//            break
//        }
//        let tabBarItem = UITabBarItem(title: title, image: UIImage(systemName: uiImageSystemName), tag: tabbarTag)
//        viewController.tabBarItem = tabBarItem
//        let navigationView = UINavigationController(rootViewController: viewController)
//        return navigationView
//    }
// }

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
