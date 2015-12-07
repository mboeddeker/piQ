//
//  piQ.swift
//  piQ
//
//  Created by Marvin Böddeker on 06.12.15.
//  Copyright © 2015 Marvin Böddeker. All rights reserved.
//

import Foundation
import UIKit
import CoreImage



public class piQ{
    public init (){
        print("Class has been initialised")
    }
    
    public func doSomething(){
    print("Yeah, it works")
    }
    

}

extension UIImageView {
    
    public func piQ_RoundImage(){
        self.clipsToBounds = true
        self.layer.cornerRadius = self.frame.size.width / 2
    }
    
    
    public func piQ_triangle(){

        let layerHeight = self.layer.frame.height
        let layerWidth = self.layer.frame.width
        
        
        // Create Path
        let bezierPath = UIBezierPath()
        
        // Draw Points
        bezierPath.moveToPoint(CGPoint(x: layerWidth/2, y: 0))
        bezierPath.addLineToPoint(CGPoint(x: layerWidth, y: layerHeight))
        bezierPath.addLineToPoint(CGPoint(x: 0, y: layerHeight))
        // bezierPath.addLineToPoint(CGPoint(x: 0, y: 0))
        bezierPath.closePath()
        
        
        
        // Mask to Path
        let mask = CAShapeLayer()
        mask.frame = self.bounds
        mask.path = bezierPath.CGPath
        
        self.layer.mask = mask
        
    }
    
    public enum filterNames {
        case Tonality
        case Noir
        case AnselAdams
        case Dark
        case Dots
    }
    
    public func piQ_convertToGrayScale(imageFilter:filterNames){
        
        // var filterNames: [String] = ["CIPhotoEffectTonal","CIPhotoEffectNoir","CIMaximumComponent","CIMinimumComponent","CIDotScreen"]
        
        var CIfilterName:String = ""
        
        
        
        
        switch imageFilter{
        case .Tonality:
            CIfilterName = "CIPhotoEffectTonal"
            
        case .Noir:
            CIfilterName = "CIPhotoEffectNoir"
            
        case .AnselAdams:
            CIfilterName = "CIMaximumComponent"
            
        case .Dark:
            CIfilterName = "CIMinimumComponent"
            
        case .Dots:
            CIfilterName = "CIDotScreen"
            
        default:
            CIfilterName = ""
        }
        
        
        
        
        var originalImage = self.image
        
        let ciContext = CIContext(options: nil)
        let startImage = CIImage(image: originalImage!)
        
        let filter = CIFilter(name: CIfilterName)
        
        filter?.setDefaults()
        
        //LETS WORK
        
        filter?.setValue(startImage, forKey: kCIInputImageKey)
        let filteredImageData = filter?.valueForKey(kCIOutputImageKey) as! CIImage
        
        let filteredImageRef = ciContext.createCGImage(filteredImageData, fromRect: filteredImageData.extent)
        self.image = UIImage(CGImage: filteredImageRef)
        
    }


    
}