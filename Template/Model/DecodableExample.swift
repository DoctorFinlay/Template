//
//  DecodableExample.swift
//  Template
//
//  Created by Iain Coleman on 16/01/2018.
//  Copyright © 2018 Iain Coleman. All rights reserved.
//

import Foundation

struct DecodableExample : Decodable {

    // With SwiftyJSON we can call our properties what we want, but with Swift 4 Decodable, it has to mirror EXACTLY what we see in the JSON response.
    
    public private(set) var _id: String!
    public private(set) var name: String!
    public private(set) var description: String!
    public private(set) var __v: Int //This is a mongoDB identifier - even though we don't need it in the app, we have to declare it in our model as it is in the JSON data that is returned to us, so Swift needs to be able to decode it
    
    
}
