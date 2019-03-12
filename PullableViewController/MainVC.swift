//
//  MainVC.swift
//  PullableViewController
//
//  Created by Creatrixe on 12/03/2019.
//  Copyright © 2019 Creatrixe. All rights reserved.
//

import UIKit

class MainVC: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        addPullableController()
        // Do any additional setup after loading the view.
    }
    

    func addPullableController(){
        let vc = self.storyboard?.instantiateViewController(withIdentifier: "PullableVC") as! PullableVC
        
        self.addChild(vc)
        self.view.addSubview(vc.view)
        vc.didMove(toParent: self)
        
        let height = view.frame.height
        let width  = view.frame.width
        vc.view.frame = CGRect(x: 0, y: self.view.frame.maxY, width: width, height: height)
    }
}
