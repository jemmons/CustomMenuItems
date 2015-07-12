import UIKit



class TableViewController : UITableViewController {
  static let copySelector = Selector("copy:")
  static let customSelector = Selector("myItemAction:")
  
  override func viewDidLoad() {
    let newMenuItem = UIMenuItem(title: "My Item", action: TableViewController.customSelector)
    
    let menuController = UIMenuController.sharedMenuController()
    var newItems = menuController.menuItems ?? [UIMenuItem]()
    newItems.append(newMenuItem)
    menuController.menuItems = newItems
  }
  
  
  //MARK: - TABLE VIEW DELEGATE METHODS
  override func tableView(tableView: UITableView, shouldShowMenuForRowAtIndexPath indexPath: NSIndexPath) -> Bool {
    return true
  }
  
  
  override func tableView(tableView: UITableView, canPerformAction action: Selector, forRowAtIndexPath indexPath: NSIndexPath, withSender sender: AnyObject?) -> Bool {
    return action == TableViewController.copySelector || action == TableViewController.customSelector
  }
  
  
  override func tableView(tableView: UITableView, performAction action: Selector, forRowAtIndexPath indexPath: NSIndexPath, withSender sender: AnyObject?) {
    //You can handle standard actions here, but custom actions never trigger this. It still needs to be present for the menu to display, though.
  }
}
