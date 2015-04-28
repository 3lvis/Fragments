import UIKit
import JSON

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

  var window: UIWindow?

  func application(application: UIApplication, didFinishLaunchingWithOptions launchOptions: [NSObject: AnyObject]?) -> Bool {
    window = UIWindow(frame: UIScreen.mainScreen().bounds)
    window?.rootViewController = Tailor(
      pieces: JSON.fromFileNamed("pieces.json") as! [[String : AnyObject]],
      styles: JSON.fromFileNamed("styles.json") as! [[String : AnyObject]])
    window?.makeKeyAndVisible()

    return true
  }
}

