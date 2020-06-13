//
//  CacheManager.swift
//  OneDayBuild-YouTube
//
//  Created by Mikaela Caron on 6/12/20.
//  Copyright © 2020 Mikaela Caron. All rights reserved.
//

import Foundation

class CacheManager {
    
    static var cache = [String:Data]()
    
    static func setVideoCache(_ url: String, _ data: Data?) {
        // Store the image data nd use the url as the key
        cache[url] = data
    }
    
    static func getVideoCache(_ url: String) -> Data? {
        // Try to get the data for the specified url
        return cache[url]
    }
    
}//end class Cache Manger
