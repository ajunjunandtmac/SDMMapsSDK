//
//  SDMMapViewService.swift
//  SDMMapsCore
//
//  Created by Steven Zhou on 2022/6/9
//  
//      

import Foundation
import RxSwift
import CoreLocation

public protocol SDMMapViewService {
    init(with frame: CGRect)
    func setFrame(_ frame: CGRect, animated: Bool)
    func getMapView() -> UIView
    func loadScene(with mapViewType: SDMMapViewType) -> Observable<Void>
    func handleLowMemory()
    func setCenter(_ center: CLLocationCoordinate2D, animate: Bool, zoom: Float?)
    func setCenter(_ center: CLLocationCoordinate2D, animate: Bool, distanceInMeter: Double?)
}
