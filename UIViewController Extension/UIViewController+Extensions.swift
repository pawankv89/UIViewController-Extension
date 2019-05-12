//
//  UIViewController+Extensions.swift
//  Storyboard Extension
//
//  Created by Pawan kumar on 08/05/19.
//  Copyright © 2019 Pawan Kumar. All rights reserved.
//

import UIKit

extension UIViewController {
  func showAlertWithMessage(_ message: String) {
    let alertController = UIAlertController(title: "Alert", message:message, preferredStyle: .alert)
    alertController.addAction(UIAlertAction(title: "OK", style: UIAlertAction.Style.cancel, handler: nil))
    present(alertController, animated: true, completion: nil)
  }
}
