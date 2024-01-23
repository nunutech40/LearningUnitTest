//
//  SetParameter.swift
//  PlaygroundAja
//
//  Created by Nunu Nugraha on 23/01/24.
//

import Foundation

class ParamFilter {
    var dateStart: String?
    var dateEnd: String?
    var jenisIzin: String?
}

func sendParamFilterPermission(dateStart: String?, dateEnd: String?, jenisIzin: String?) -> ParamFilter? {
    
    guard dateStart != nil, dateEnd != nil, jenisIzin != nil else {
        return nil
    }
    
    let param = ParamFilter()
    param.dateStart = dateStart
    param.dateEnd = dateEnd
    param.jenisIzin = jenisIzin
    return param
}
