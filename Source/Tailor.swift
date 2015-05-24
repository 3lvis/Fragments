import UIKit

class Tailor : UIViewController {

  init() {
    super.init(nibName: nil, bundle: nil)
  }

  required init(coder aDecoder: NSCoder) {
    fatalError("Tailor doesn't support Storyboards or Interface Builder")
  }

  override func viewDidLoad() {
    super.viewDidLoad()

    self.view.backgroundColor = .whiteColor()

    let label = UILabel(frame: CGRect(x: 0, y: 0, width: 100, height: 100))
    label.text = "Hi there, what are you doing to do today in this beautiful day?"
    label.font = UIFont.boldSystemFontOfSize(18.0)
    label.setTranslatesAutoresizingMaskIntoConstraints(false)
    label.backgroundColor = .redColor()
    self.view.addSubview(label)

    self.view.addConstraint(
      NSLayoutConstraint(
        item: label,
        attribute: .CenterX,
        relatedBy: .Equal,
        toItem: self.view,
        attribute: .CenterX,
        multiplier: 1.0,
        constant: 1.0))

    self.view.addConstraint(
      NSLayoutConstraint(
        item: label,
        attribute: .Top,
        relatedBy: .Equal,
        toItem: self.view,
        attribute: .Bottom,
        multiplier: 0.05,
        constant: 0.0))
  }

  override func viewDidAppear(animated: Bool) {
    super.viewDidAppear(animated)
  }
}
