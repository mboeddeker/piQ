//
//  piQ.swift
//  piQ
//
//  Created by Marvin Böddeker on 06.12.15.
//  Copyright © 2015 Marvin Böddeker. All rights reserved.
//

import Foundation
import UIKit


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
}