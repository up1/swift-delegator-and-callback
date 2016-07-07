import UIKit

class MainViewController: UIViewController, NetworkDelegator {
    
    
    let myNetwork = MyNetwork()

    override func viewDidLoad() {
        super.viewDidLoad()
        myNetwork.delegate = self
    }
    
    @IBAction func onClick(sender: AnyObject) {
        myNetwork.loadDataFromApi()
    }

    func didSuccessShowData(result: String) {
        print("Result from server is \(result)")
    }
    

}
