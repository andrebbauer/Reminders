import Foundation
import CoreData

extension Reminder {
  @nonobjc public class func fetchRequest() -> NSFetchRequest<Reminder> {
    return NSFetchRequest<Reminder>(entityName: "Reminder")
  }
  
  @NSManaged public var title: String
  @NSManaged public var isCompleted: Bool
  @NSManaged public var list: List
}
