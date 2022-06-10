//
//  HereMapViewTypeAdapter.swift
//  HereMap
//
//  Created by Steven Zhou on 2022/6/9
//  
//      

import heresdk

struct HereMapViewTypeAdaptor {
    private let mapViewType: SDMMapViewType
    init(mapViewType: SDMMapViewType) {
        self.mapViewType = mapViewType
    }
    
    var mapScheme: heresdk.MapScheme {
        switch mapViewType {
        case .normalDay:
            return heresdk.MapScheme.normalDay
        case .normalNight:
            return heresdk.MapScheme.normalNight
        case .satellite:
            return heresdk.MapScheme.satellite
        case .hybridDay:
            return heresdk.MapScheme.hybridDay
        case .hybridNight:
            return heresdk.MapScheme.hybridNight
        }
    }
}
