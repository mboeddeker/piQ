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
    @IBAction func tintButton(sender: AnyObject) {
        
        imageView.piQ_tintImageColor(UIColor.blueColor().colorWithAlphaComponent(0.1))
        
    }
    
    @IBAction func rotate(sender: AnyObject) {
        imageView.piQ_rotateImageWithAnimation(6)
    }
    
    
    let PIQ = piQ()

    override func viewDidLoad() {
        super.viewDidLoad()
        
        PIQ.doSomething()
        
        //imageView.piQ_RoundImage()
        bgImageView.piQ_triangle_DOWN()
        imageView.piQ_triangle_UP()
        
        
        imageView.piQ_convertToGrayScale(.Tonality)
  
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }


}

