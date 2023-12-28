//
//  ApiCaller.swift
//  APlusCalculator
//
//  Created by ravit chaudhary on 12/04/23.
//

import Foundation
class APICaller
{
    static let sharedInstance = APICaller()
    
    
    static func Calculator_API_POST_(TokenNo:String,ScreenName:String,completion : @escaping(Result<CalculatorModel,Error>)-> Void)
    {
        
        let url1 = URL(string:(BaseURL.Calucatorurl))!
        var urlRequest = URLRequest(url : url1)
        print("url1 :\(String(describing: url1))")
        let parameters: [String : Any] = ["TokenNo":TokenNo,"ScreenName":ScreenName]
        print("parameters :\(String(describing: parameters))")
        
        do {
            
            urlRequest.httpBody = try JSONSerialization.data(withJSONObject: parameters, options: .prettyPrinted)
        } catch let error {
            print(error.localizedDescription)
            return
        }
        
        urlRequest.httpMethod = "POST"
        
        urlRequest.addValue("application/json", forHTTPHeaderField: "Content-Type")
        urlRequest.timeoutInterval = 60
        
        URLSession.shared.dataTask(with: urlRequest) { data, response, error in
            
            guard error == nil else {
                
                UserDefaults.standard.set(error?.localizedDescription, forKey: "APIERROR")
                
                completion(.failure(error!))
                return
            }
            guard let data = data,
                  let response = response as? HTTPURLResponse else {
                print("Unknown error")
                UserDefaults.standard.set(APIError.unknownError, forKey: "APIERROR")
                completion(.failure(APIError.unknownError))
                return
            }
            
            guard (200 ... 299) ~= response.statusCode else {                    // check for http errors
                print("statusCode should be 2xx, but is \(response.statusCode)")
                print("response = \(response)")
                let json = try? JSONSerialization.jsonObject(with: data, options: []) as? [String: Any]
                let parsedError = json?["body"] as? String
                UserDefaults.standard.set(parsedError, forKey: "APIERROR")
                completion(.failure(APIError.failureAPI(parsedError ?? "")))
                return
            }
            
            let jsonData  =  try! JSONDecoder().decode(CalculatorModel.self, from: data)
            print("JosnData :\(jsonData)")
            
            
            DispatchQueue.main.async {
                completion(.success(jsonData))
            }
        }.resume()
    }
}
