//
//  Response.swift
//  OneDayBuild-YouTube
//
//  Created by Mikaela Caron on 6/4/20.
//  Copyright © 2020 Mikaela Caron. All rights reserved.
//

import Foundation

struct Response: Decodable {
    
    var items: [Video]?
    
    enum CodingKeys: String, CodingKey {
        case items
    }
    
    init(from decoder: Decoder) throws {
        
        let container = try decoder.container(keyedBy: CodingKeys.self)
        
        self.items = try container.decode([Video].self, forKey: .items)
        
    }//end init()
    
}//end struct Response
