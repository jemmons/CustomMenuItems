import UIKit



@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {
  var window: UIWindow?

  func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplicationLaunchOptionsKey : Any]? = nil) -> Bool {
    addCustomMenuItems()
    return true
  }

  
  private func addCustomMenuItems() {
    let newMenuItem = UIMenuItem(title: "My Item", action: MenuAction.Custom.selector())
    
    let menuController = UIMenuController.shared
    var newItems = menuController.menuItems ?? [UIMenuItem]()
    newItems.append(newMenuItem)
    menuController.menuItems = newItems
  }
}

