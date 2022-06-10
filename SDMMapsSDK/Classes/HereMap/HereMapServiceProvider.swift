//
//  HereMapServiceProvider.swift
//  HereMap
//
//  Created by Steven Zhou on 2022/6/9
//  
//      

import UIKit

public class HereMapServiceProvider: SDMMapServiceProvider {
    public func provideMapViewService(with frame: CGRect) -> SDMMapViewService {
        return HereMapViewService(with: frame)
    }
    
    public init() {
        
    }
}
