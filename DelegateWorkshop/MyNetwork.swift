import Foundation
import Alamofire

class MyNetwork {
    var delegate: NetworkDelegator?
    
    func loadDataFromApi() {
        let url = "https://itunes.apple.com/us/rss/topfreeapplications/limit=10/json"
        request(.GET, url)
            .validate()
            .responseString { response in
                self.delegate?.didSuccessShowData(response.result.value!)
        }
    }
    
}
