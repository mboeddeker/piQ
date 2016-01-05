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
    
    
    
    //**** HIDE SHOW ANIMATION
    
    
    
    @IBOutlet weak var imageViewHeightConstraint: NSLayoutConstraint!
    @IBAction func hideShowButton(sender: AnyObject) {
        

        
        PIQ.toggleImageViewVisibility(self, ImageConstraint: imageViewHeightConstraint)
        
    }
    
    
    
    let placeHolderPic:UIImage = UIImage(named: "enchanted-abbey_1914053i")!
    
    let PIQ = piQ()

    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        
        //imageView.piQ_RoundImage()
        bgImageView.piQ_imageFromUrl("https://s3.amazonaws.com/cocoacontrols_production/uploads/control_image/image/7902/charizard.png", placeholderImage: placeHolderPic)
        bgImageView.piQ_triangle_DOWN()
        imageView.piQ_imageFromUrl("http://drschmitz.info/wp-content/gallery/rajede/wolf.jpg", placeholderImage: placeHolderPic)
        imageView.piQ_triangle_UP()
        //imageView.piQ_RoundImage()
        
        
        imageView.piQ_convertToGrayScale(.Noir)
        
        bgImageView.hidden = true
        
        
  
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }


}

