//
//  Model.swift
//  OneDayBuild-YouTube
//
//  Created by Mikaela Caron on 6/4/20.
//  Copyright © 2020 Mikaela Caron. All rights reserved.
//

import Foundation

protocol ModelDelegate {
    func videosFetched(_ videos: [Video])
}

class Model {
    
    var delegate: ModelDelegate?
    
    func getVideos() {
        
        // Create a URL object
        let url = URL(string: API_Constants.API_URL)
        
        guard url != nil else { return }
        
        // Get URLSession object
        let session = URLSession.shared
        
        // Get a data task from the URLSession object
        let dataTask = session.dataTask(with: url!) { (data, response, error) in
            
            // Check if there were any errors
            if error != nil || data == nil { return }
            
            do {
                // Parsing hte data into video objects
                let decoder = JSONDecoder()
                decoder.dateDecodingStrategy = .iso8601
                let response = try decoder.decode(Response.self, from: data!)
                
                if response.items != nil {
                    // Call the "videosFetched" method of the delegate
                    self.delegate?.videosFetched(response.items!)
                    
                    //dump(response)
                }
                
            } catch {
                
            }
            
        }//end let dataTask
        
        // Kick off the data task
        dataTask.resume()
        
    }//end getVideos()
    
}
