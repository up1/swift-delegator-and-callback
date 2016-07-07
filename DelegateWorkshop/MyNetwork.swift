import Foundation
import Alamofire

class MyNetwork {
    
    var onSuccess: ((result: String)->())?
    
    func loadDataFromApi() {
        let url = "https://itunes.apple.com/us/rss/topfreeapplications/limit=10/json"
        request(.GET, url)
            .validate()
            .responseString { response in
                self.onSuccess?(result: response.result.value!)
        }
    }
    
}
