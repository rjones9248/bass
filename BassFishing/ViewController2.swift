

import UIKit

class ViewController2: UIViewController
{

    @IBOutlet weak var userName: UITextField!
    @IBOutlet weak var password: UITextField!
    @IBOutlet weak var loginButton: UIButton!
    
    var p = "Prospect"
    var h = "Hersey"
    var bg = "Buffalo Grove"
    var pp = "123"
    var hp = "234"
    var bgp = "345"
    var chooser = 0
    
    override func viewDidLoad()
    {
        super.viewDidLoad()
        
        loginButton.setTitleColor(UIColor.gray, for: .disabled)
    }

    @IBAction func loginButton(_ sender: Any)
    {
      if userName.text == p && password.text == pp
      {
            performSegue(withIdentifier: "loggedInConnection", sender: nil)

            chooser = 1

        //        present(ViewController3, animated: true, completion: nil)
      }
        if userName.text == "Hersey" && password.text == "234"
        {
            performSegue(withIdentifier: "loggedInConnection", sender: nil)
            //        present(ViewController3, animated: true, completion: nil)
        }
      else
      {
        let alert = UIAlertController(title: "Incorrect Username or Password", message: nil, preferredStyle: UIAlertControllerStyle.alert)

        
        alert.addAction(UIAlertAction(title: "Close", style: UIAlertActionStyle.default, handler: nil))
        
        self.present(alert, animated: true, completion: nil)
        
        userName.text = ""
        password.text = ""
        }
        
        if userName.text == h && password.text == hp
        {
            performSegue(withIdentifier: "loggedInConnection", sender: nil)
            chooser = 2
            
        }else{
            
            let alert = UIAlertController(title: "Incorrect username or password", message: nil, preferredStyle: UIAlertControllerStyle.alert)
            
            alert.addAction(UIAlertAction(title: "close", style: UIAlertActionStyle.default, handler: nil))
            
            self.present(alert, animated: true, completion: nil)
            
            userName.text = ""
            password.text = ""
        }
        
        if userName.text == bg && password.text == bgp
        {
            performSegue(withIdentifier: "loggedInConnection", sender: nil)
            chooser = 3
            
        }else{
            
            let alert = UIAlertController(title: "Incorrect username or password", message: nil, preferredStyle: UIAlertControllerStyle.alert)
            
            alert.addAction(UIAlertAction(title: "close", style: UIAlertActionStyle.default, handler: nil))
            
            self.present(alert, animated: true, completion: nil)
            
            userName.text = ""
            password.text = ""
        }
    }
    
}
    


