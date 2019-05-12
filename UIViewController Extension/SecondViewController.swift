//
//  SecondViewController.swift
//  Storyboard Extension
//
//  Created by Pawan kumar on 08/05/19.
//  Copyright © 2019 Pawan Kumar. All rights reserved.
//

import UIKit

class SecondViewController: UIViewController {

    lazy var alertButton: UIButton = {
        
        let btn = UIButton()
        btn.frame = CGRect.init(x: 0, y: 100, width: 300, height: 50)
        btn.center = CGPoint.init(x: UIScreen.main.bounds.width/2, y: UIScreen.main.bounds.height/4)
        btn.backgroundColor = .red
        btn.setTitle("Show Alert", for: .normal)
        return btn
    }()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        self.title = "Second"
      
        self.view.addSubview(alertButton)
        alertButton.addTarget(self, action: #selector(self.showAlert), for: .touchUpInside)
    }
    
    @objc func showAlert(sender: UIButton) -> () {
        
        self.showAlertWithMessage("This is Second ViewController")
    }

}
