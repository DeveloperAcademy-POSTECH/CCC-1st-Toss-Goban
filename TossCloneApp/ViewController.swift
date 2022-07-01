//
//  ViewController.swift
//  TossCloneApp
//
//  Created by Lee Myeonghwan on 2022/06/30.
//

import UIKit
import SwiftUI

class MainViewController: UIViewController {
    override func viewDidLoad() {
        super.viewDidLoad()
        let testLabel = UILabel()
        testLabel.text = "test 중"
        testLabel.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(testLabel)
        let safeArea = view.safeAreaLayoutGuide
        testLabel.leadingAnchor.constraint(equalTo: safeArea.leadingAnchor, constant: 16).isActive = true
    }
}

struct MainViewControllerPreView: PreviewProvider {
    static var previews: some View {
        MainViewController().toPreview()
    }
}
