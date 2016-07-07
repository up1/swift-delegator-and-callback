import UIKit

class MainViewController: UIViewController {
    
    
    let myNetwork = MyNetwork()

    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    @IBAction func onClick(sender: AnyObject) {
        myNetwork.loadDataFromApi();
        myNetwork.onSuccess = { result in
            print("Result from server is \(result)")
        }
    }
    

}
