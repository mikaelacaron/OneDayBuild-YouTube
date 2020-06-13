//
//  DetailViewController.swift
//  OneDayBuild-YouTube
//
//  Created by Mikaela Caron on 6/13/20.
//  Copyright © 2020 Mikaela Caron. All rights reserved.
//

import UIKit
import WebKit

class DetailViewController: UIViewController {
    
    @IBOutlet var titleLabel: UILabel!
    @IBOutlet var dateLabel: UILabel!
    @IBOutlet var webView: WKWebView!
    @IBOutlet var textView: UITextView!
    
    var video: Video?
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }//end viewDidLoad()
    
    override func viewWillAppear(_ animated: Bool) {
        
        // Clear the fields
        titleLabel.text = ""
        dateLabel.text = ""
        textView.text = ""
        
        // Check if there's a video
        guard video != nil else { return }
        
        // Ceate the embed URL
        let embedUrlString = API_Constants.YT_EMBED_URL + video!.videoId
        
        // Load it into the WebView
        let url = URL(string: embedUrlString)
        let request = URLRequest(url: url!)
        webView.load(request)
        
        // Set the title
        titleLabel.text = video?.title
        
        // Set the date
        let df = DateFormatter()
        df.dateFormat = "EEEE, MMM d yyyy"
        dateLabel.text = df.string(from: video!.published)
        
        // Set the description
        textView.text = video?.description
        
    }//end viewWillAppear()
    
}//end class DetailViewController
