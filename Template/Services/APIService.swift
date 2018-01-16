//
//  APIService.swift
//  Template
//
//  Created by Iain Coleman on 16/01/2018.
//  Copyright © 2018 Iain Coleman. All rights reserved.
//

import Foundation
import Alamofire
import SwiftyJSON

class APIService {
    
    static let instance = APIService()
    
    
    enum jsonKeys: String {
        
        //All JSON object parameters are enumerated here to avoid mistyping with string literals
        
        case result // Enum has to be set up with an initial case
        
    }
    
    
    func getData(completion: @escaping CompletionHandler) {
        
        let fullUrl = ""
        
        Alamofire.request(fullUrl, method: .get, parameters: nil, encoding: JSONEncoding.default, headers: nil).responseJSON { (response) in
            
            if response.result.error == nil {
                guard let data = response.data else {return}
                
                //run parsing function here
                
                
            } else {
                debugPrint(response.result.error as Any)
            }
        }
    }
    
    
    func setData(data: Data) {
        
        do {
            let json = try JSON(data: data)
            
            
            //1) To parse through an array of objects(users, posts, products etc, create a ModelClass which contains all of the necessary properties then you can create an array of all the objects
//            for item in json {
//                let ____ = item[jsonKeys.___.rawValue].stringValue or .intValue etc
//                Do this for every parameter then:
//                let modelClassName = ModelClass(name: String, etc)
//                modelNameArray.append(modelClassName)
//           }
            
            //2) To just get info on a user for example, set the url to get just the data we need for the particular user etc. Then:
//            var pokemonName = json[jsonKeys.___.rawValue].stringValue etc
            
            //3) To parse an array of a particular property for one object (e.g. pokemon abilities), it is a bit more complicated. The following parses through a list of pokemon type names for a particular pokemon.  The type name is nested inside types, type, name
//            let typesArray = json[jsonKeys.types.rawValue].arrayValue.map{$0[jsonKeys.type.rawValue][jsonKeys.name.rawValue].stringValue}
            
            //4) In Swift 4, we can do this a lot simpler, by making our model (in this case Channel) conform to the Decodable protocol. The model has to match the JSON format exactly - all items must be included in the model class - see Decodable.Swift in Model group
            
//            do {
//                self.channels = try JSONDecoder().decode([Channel].self, from: data)
//            } catch let error{
//                debugPrint(error as Any)
//            }
//            print(self.channels)
//            NotificationCenter.default.post(name: NOTIF_CHANNELS_LOADED, object: nil)
//            completion(true)
//        } else {
//            completion(false)
//            debugPrint(response.result.error as Any)
//        }
//    }





            
            
        } catch {
            print(error)
        }
    }
}
