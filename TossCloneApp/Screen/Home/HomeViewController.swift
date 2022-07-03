//
//  HomeViewController.swift
//  TossCloneApp
//
//  Created by Lee Myeonghwan on 2022/07/01.
//

import UIKit
import SwiftUI

final class HomeViewController: UIViewController {
    private lazy var logoView: UIStackView = {
        var logoImage = UIImage(named: "tossLogo")
        let logoButton = UIButton()
        logoButton.setImage(logoImage, for: .normal)
        logoButton.imageView?.contentMode = .scaleAspectFit
        logoButton.addTarget(self, action: #selector(logoButtonPressed), for: .touchDown)
        let spacer = UIView()
        let logoStack = UIStackView(arrangedSubviews: [logoButton, spacer])
        logoStack.axis = .horizontal
        logoStack.distribution = .fillEqually
        return logoStack
    }()
    private lazy var chatBarItem: UIBarButtonItem = {
        let chatImage = UIImage(systemName: "message.fill")
        let chatBarItem = UIBarButtonItem(image: chatImage, style: .plain, target: self, action: #selector(HomeViewController.chatButtonPressed))
        chatBarItem.tintColor = .systemGray
        return chatBarItem
    }()
    private lazy var bellBarItem: UIBarButtonItem = {
        let bellImage = UIImage(systemName: "bell.fill")
        let bellBarItem = UIBarButtonItem(image: bellImage, style: .plain,
                                          target: self, action: #selector(bellButtonPressed))
        bellBarItem.tintColor = .systemGray
        return bellBarItem
    }()
    override func viewDidLoad() {
        super.viewDidLoad()
        setNI()
    }
}

extension HomeViewController {
    private func setNI() {
        navigationItem.titleView = logoView
        navigationItem.rightBarButtonItems = [bellBarItem, chatBarItem]
    }
    @objc func logoButtonPressed() {
        // action
    }
    @objc func chatButtonPressed() {
        // action
    }
    @objc func bellButtonPressed() {
        // action
    }
}

struct HomeViewControllerPreView: PreviewProvider {
    static var previews: some View {
        HomeViewController().toPreview()
    }
}
