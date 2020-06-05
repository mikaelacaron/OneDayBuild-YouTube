//
//  ViewController.swift
//  OneDayBuild-YouTube
//
//  Created by Mikaela Caron on 5/23/20.
//  Copyright © 2020 Mikaela Caron. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    var model = Model()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        model.getVideos()
        
    }//nd viewDidLoad()

}//end class ViewController

