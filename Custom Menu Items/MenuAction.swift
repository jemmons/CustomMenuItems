import Foundation

enum MenuAction:String{
  case Copy = "copy:"
  case Custom = "myItemAction:"
  
  //We need this awkward little conversion because «enum»'s can only have literals as raw value types. And «Selector»s aren't literal.
  func selector()->Selector{
    return Selector(self.rawValue)
  }
}