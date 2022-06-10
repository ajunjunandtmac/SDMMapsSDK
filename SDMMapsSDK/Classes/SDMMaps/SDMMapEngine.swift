//
//  SDMMapEngine.swift
//  SDMMaps
//
//  Created by Steven Zhou on 2022/6/9
//  
//      

public enum SDMMapSource {
    case hereMap
}

public class SDMMapEngine {
    public static func setupProvider(with mapSource: SDMMapSource) -> SDMMapServiceProvider {
        switch mapSource {
        case .hereMap:
            return HereMapServiceProvider()
        }
    }
}
