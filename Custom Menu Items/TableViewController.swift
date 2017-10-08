import UIKit



class TableViewController : UITableViewController {
  //MARK: - TABLE VIEW DELEGATE METHODS
  
  override func tableView(_ tableView: UITableView, shouldShowMenuForRowAt indexPath: IndexPath) -> Bool {
    return true
  }
  

  override func tableView(_ tableView: UITableView, canPerformAction action: Selector, forRowAt indexPath: IndexPath, withSender sender: Any?) -> Bool {
    return action == MenuAction.Copy.selector() || action == MenuAction.Custom.selector()
  }
  
  
  override func tableView(_ tableView: UITableView, performAction action: Selector, forRowAt indexPath: IndexPath, withSender sender: Any?) {
    //You can handle standard actions here, but custom actions never trigger this. It still needs to be present for the menu to display, though.
  }
}
