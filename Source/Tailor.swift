import UIKit

class Tailor : UIViewController {
  let JSON: [String : AnyObject]

  init(JSON: [String : AnyObject]) {
    self.JSON = JSON

    super.init(nibName: nil, bundle: nil)
  }

  required init(coder aDecoder: NSCoder) {
      fatalError("Tailor doesn't support Storyboards or Interface Builder")
  }

  override func viewDidLoad() {
    self.view.backgroundColor = .whiteColor()
  }
}
