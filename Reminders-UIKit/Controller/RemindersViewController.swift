import CoreData
import UIKit

class RemindersViewController: UITableViewController {
  var list: List?
  var context: NSManagedObjectContext?
  
  override func viewDidLoad() {
    super.viewDidLoad()
  }
}

extension RemindersViewController {
  override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
    switch segue.identifier {
    case "addNewReminder": handleAddNewReminderSegue(segue)
    default:
      return
    }
  }
}

// MARK: - Setup Code -
extension RemindersViewController {
  private func handleAddNewReminderSegue(_ segue: UIStoryboardSegue) {
    guard let newReminderViewController = (segue.destination as? UINavigationController)?.topViewController as? NewReminderViewController else {
      return
    }
    
    newReminderViewController.context = self.context
    newReminderViewController.list = self.list
  }
}

// MARK: - Table View -
extension RemindersViewController {
  override func numberOfSections(in tableView: UITableView) -> Int {
    return 0
  }
  
  override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
    return 0
  }
  
  override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
    return UITableViewCell()
  }
  
  override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
    tableView.deselectRow(at: indexPath, animated: true)
  }
}
