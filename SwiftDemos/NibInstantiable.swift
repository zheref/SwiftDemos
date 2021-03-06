//
//  NibInstantiable.swift
//  SwiftDemos
//
//  Created by Piotr Gorzelany on 14/04/16.
//  Copyright © 2016 Piotr Gorzelany. All rights reserved.
//

import UIKit

protocol NibInstantiable {
    
    static var nibId: String {get}
    
}

extension NibInstantiable where Self: UIView {
    
    static var nibId: String {
        return String(describing: Self.self)
    }
    
    static func instantiateFromNib() -> Self {
        
        return Bundle.main.loadNibNamed(Self.nibId, owner: self, options: nil)!.first as! Self
        
    }
    
}
