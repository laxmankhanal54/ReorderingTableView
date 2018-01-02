
import UIKit

class FruitsTVC: UITableViewController {
  
  var fruits = ["Apple", "Banana", "Mango", "Orange", "Pine Apple"]
  
  override func viewDidLoad() {
    super.viewDidLoad()
    self.tableView.register(UITableViewCell.self, forCellReuseIdentifier: "cell")
    self.tableView.isEditing = true
  }
  
  override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
    return fruits.count
  }
  
  override func tableView(_ tableView: UITableView, editingStyleForRowAt indexPath: IndexPath) -> UITableViewCellEditingStyle {
    return .none
  }
  
  override func tableView(_ tableView: UITableView, shouldIndentWhileEditingRowAt indexPath: IndexPath) -> Bool {
    return false
  }

  
  override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
    let cell = tableView.dequeueReusableCell(withIdentifier: "cell")
    cell?.textLabel?.text = fruits[indexPath.row]
    return cell!
  }
  
  override func tableView(_ tableView: UITableView, canMoveRowAt indexPath: IndexPath) -> Bool {
    return true
  }
  
  override func tableView(_ tableView: UITableView, moveRowAt sourceIndexPath: IndexPath, to destinationIndexPath: IndexPath) {
    let movedObject = fruits[sourceIndexPath.row]
    fruits.remove(at: sourceIndexPath.row)
    fruits.insert(movedObject, at: destinationIndexPath.row)
    NSLog("%@", "\(sourceIndexPath.row) => \(destinationIndexPath.row) \(fruits)")
  }

}

