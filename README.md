# UIViewController-Extension

=========

## UIViewController Extension in Swift 5.

### In this demo show UIViewController Extension.

------------
Added Some screens here.

![](https://github.com/pawankv89/UIViewController-Extension/blob/master/images/screen_1.png)
![](https://github.com/pawankv89/UIViewController-Extension/blob/master/images/screen_2.png)
![](https://github.com/pawankv89/UIViewController-Extension/blob/master/images/screen_3.png)
![](https://github.com/pawankv89/UIViewController-Extension/blob/master/images/screen_4.png)
![](https://github.com/pawankv89/UIViewController-Extension/blob/master/images/screen_5.png)
![](https://github.com/pawankv89/UIViewController-Extension/blob/master/images/screen_6.png)




## Usage
------------

#### UIViewController Extension Create UIViewController+Extensions.swift

```swift

import UIKit

extension UIViewController {
func showAlertWithMessage(_ message: String) {
let alertController = UIAlertController(title: "Alert", message:message, preferredStyle: .alert)
alertController.addAction(UIAlertAction(title: "OK", style: UIAlertAction.Style.cancel, handler: nil))
present(alertController, animated: true, completion: nil)
}
}


```

#### UIViewController Extension Used AlertView

```swift

class HomeViewController: UIViewController {

lazy var alertButton: UIButton = {

let btn = UIButton()
btn.frame = CGRect.init(x: 0, y: 100, width: 300, height: 50)
btn.center = CGPoint.init(x: UIScreen.main.bounds.width/2, y: UIScreen.main.bounds.height/4)
btn.backgroundColor = .red
btn.setTitle("Show Alert", for: .normal)
return btn
}()

lazy var navigationButton: UIButton = {

let btn = UIButton()
btn.frame = CGRect.init(x: 0, y: 100, width: 300, height: 50)
btn.center = CGPoint.init(x: UIScreen.main.bounds.width/2, y: UIScreen.main.bounds.height/2)
btn.backgroundColor = .blue
btn.setTitle("Move To First Screen", for: .normal)
return btn
}()

override func viewDidLoad() {
super.viewDidLoad()
// Do any additional setup after loading the view.

self.title = "Home"

self.view.addSubview(navigationButton)
self.view.addSubview(alertButton)
navigationButton.addTarget(self, action: #selector(self.moveToNextScreen), for: .touchUpInside)
alertButton.addTarget(self, action: #selector(self.showAlert), for: .touchUpInside)
}

@objc func moveToNextScreen(sender: UIButton) -> () {

//Storyboard With Extensions
let viewController = UIStoryboard.storyboardViewController(FirstViewController.self)
self.navigationController?.pushViewController(viewController, animated: true)

}

@objc func showAlert(sender: UIButton) -> () {

self.showAlertWithMessage("This is Home ViewController")
}
}



```


## License

This code is distributed under the terms and conditions of the [MIT license](LICENSE).

## Change-log

A brief summary of each this release can be found in the [CHANGELOG](CHANGELOG.mdown). 
