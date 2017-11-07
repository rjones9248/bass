

import UIKit

class ViewController3: UIViewController, UITableViewDelegate, UITableViewDataSource
{
    
    var schools = ["Prospect","Rolling Medows","Hearsey"]
    
    override func viewDidLoad()
    {
        super.viewDidLoad()
        
        
    }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int
    {
        return schools.count
        
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell
    {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)
        cell.textLabel?.text = schools[indexPath.row]
        
        
        return cell
    }

    

}
