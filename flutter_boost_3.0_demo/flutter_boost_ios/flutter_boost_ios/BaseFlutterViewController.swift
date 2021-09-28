//
//  BaseFlutterViewController.swift
//  flutter_boost_ios
//
//  Created by liwenhao08 on 2021/9/22.
//

import Foundation
class BaseFlutterViewController: FBFlutterViewContainer, UIGestureRecognizerDelegate {
    
    override func viewWillAppear(_ animated: Bool) {
        self.navigationController?.setNavigationBarHidden(true, animated: false)
        super.viewWillAppear(animated)
    }
    
    override func viewDidDisappear(_ animated: Bool) {
        self.navigationController?.setNavigationBarHidden(false, animated: false)
        super.viewDidDisappear(animated)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.navigationController?.interactivePopGestureRecognizer?.delegate = self
    }
}
