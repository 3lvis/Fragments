import UIKit

class Tailor : UIViewController {
  let data: Data

  init(pieces: [[String : AnyObject]], styles: [[String : AnyObject]]) {
    data = Data(piecesJSON: pieces, stylesJSON: styles)

    super.init(nibName: nil, bundle: nil)
  }

  required init(coder aDecoder: NSCoder) {
      fatalError("Tailor doesn't support Storyboards or Interface Builder")
  }

  override func viewDidLoad() {
    self.view.backgroundColor = .whiteColor()
  }
}
