import UIKit



class DataSource : NSObject, UITableViewDataSource{
  func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
    return 4
  }
  
  
  func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
    return tableView.dequeueReusableCellWithIdentifier("CustomMenuCell", forIndexPath: indexPath)
  }
}
