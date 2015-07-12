import UIKit



@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {
  var window: UIWindow?


  func application(application: UIApplication, didFinishLaunchingWithOptions launchOptions: [NSObject: AnyObject]?) -> Bool {
    addCustomMenuItems()
    return true
  }

  
  private func addCustomMenuItems() {
    let newMenuItem = UIMenuItem(title: "My Item", action: MenuAction.Custom.selector())
    
    let menuController = UIMenuController.sharedMenuController()
    var newItems = menuController.menuItems ?? [UIMenuItem]()
    newItems.append(newMenuItem)
    menuController.menuItems = newItems
  }
}

