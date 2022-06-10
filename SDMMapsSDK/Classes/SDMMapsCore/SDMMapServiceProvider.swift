//
//  SDMMapServiceProvider.swift
//  SDMMaps
//
//  Created by Steven Zhou on 2022/6/9
//  
//      

import Foundation
import UIKit

public protocol SDMMapServiceProvider {
    func provideMapViewService(with frame: CGRect) -> SDMMapViewService
}
