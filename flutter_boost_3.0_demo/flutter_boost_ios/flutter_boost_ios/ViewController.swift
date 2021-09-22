//
//  ViewController.swift
//  flutter_boost_ios
//
//  Created by liwenhao08 on 2021/9/18.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        view.backgroundColor = .red
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        let options = FlutterBoostRouteOptions()
        options.pageName = "page_a";
        FlutterBoost.instance().open(options)
    }


}

