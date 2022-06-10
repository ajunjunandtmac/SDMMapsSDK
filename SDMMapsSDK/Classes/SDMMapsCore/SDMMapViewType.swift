//
//  SDMMapViewType.swift
//  SDMMapsCore
//
//  Created by Steven Zhou on 2022/6/9
//  
//

public enum SDMMapViewType: Int {
    /// Normal map for day.
    case normalDay

    /// Normal map for night.
    case normalNight

    /// Satellite imagery.
    case satellite

    /// Day version of hybrid scheme combining satellite data with vector street network, map labels and POI information.
    case hybridDay

    /// Night version of hybrid scheme combining satellite data with vector street network, map labels and POI information.
    case hybridNight
}

