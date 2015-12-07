//
//  ViewController.swift
//  Example
//
//  Created by Marvin Böddeker on 06.12.15.
//  Copyright © 2015 Marvin Böddeker. All rights reserved.
//

import UIKit
import piQ

class ViewController: UIViewController {
    
    @IBOutlet weak var bgImageView: UIImageView!
    @IBOutlet weak var imageView: UIImageView!
    let PIQ = piQ()

    override func viewDidLoad() {
        super.viewDidLoad()
        
        PIQ.doSomething()
        
        //imageView.piQ_RoundImage()
        bgImageView.piQ_RoundImage()
        imageView.piQ_triangle()
        imageView.piQ_convertToGrayScale(.Tonality)
  
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

