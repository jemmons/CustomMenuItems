import UIKit



class TableViewController : UITableViewController {
  //MARK: - TABLE VIEW DELEGATE METHODS
  override func tableView(tableView: UITableView, shouldShowMenuForRowAtIndexPath indexPath: NSIndexPath) -> Bool {
    return true
  }
  
  
  override func tableView(tableView: UITableView, canPerformAction action: Selector, forRowAtIndexPath indexPath: NSIndexPath, withSender sender: AnyObject?) -> Bool {
    return action == MenuAction.Copy.selector() || action == MenuAction.Custom.selector()
  }
  
  
  override func tableView(tableView: UITableView, performAction action: Selector, forRowAtIndexPath indexPath: NSIndexPath, withSender sender: AnyObject?) {
    //You can handle standard actions here, but custom actions never trigger this. It still needs to be present for the menu to display, though.
  }
}
