//
//  ViewController.swift
//  youtube-onedaybuild-matt
//
//  Created by Matthew Shin on 2020-10-05.
//

import UIKit

class ViewController: UIViewController {
    
    var model = Model()

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        model.getVideos()
    }


}

